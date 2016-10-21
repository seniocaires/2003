unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, StdCtrls,mmsystem, jpeg, fglib;

type
  TClockFrm = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    led: TImage;
    BgImage: TImage;
    AlarmBtn: TImage;
    DateBtn: TImage;
    MinBtn: TImage;
    ExitBtn: TImage;
    XBtn: TImage;
    Timer2: TTimer;
    Image1: TImage;
    MagicLabel1: TMagicLabel;

    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AlarmBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AlarmBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AlarmBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BgImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ChangeCaption(Sender: TObject);
    procedure PositionForm;

  private
    { Private declarations }
  public
        ah, am:integer;
        AlarmSet:boolean;
    { Public declarations }
  end;

var
  ClockFrm: TClockFrm;
  var T,D,C:string;
    i,n,x,y:integer;
    Pressed,minimized:boolean;
    hh,mm,ss,ms:word;
    Digit:array[0..7] of TImage;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TClockFrm.ChangeCaption(Sender: TObject);
begin
     minimized:=not minimized;
     PositionForm;
end;

procedure TClockFrm.PositionForm;
begin
     ClockFrm.Top:=0;
     clockFrm.Left:=screen.width-ClockFrm.width;
end;


procedure TClockFrm.FormCreate(Sender: TObject);
var rgn:Thandle;
begin
     Rgn:=CreateRoundRectRgn(0,0,ClockFrm.width,ClockFrm.Height,30,30);
     SetWindowRgn(handle,rgn,true);
     DeleteObject(Rgn);

     PositionForm;

     AlarmSet:=False;
     Pressed:=False;
     minimized:=false;
     n:=1;
     MinBtn.Picture.Bitmap.LoadFromResourceID(HInstance,106);
     XBtn.Picture.Bitmap.LoadFromResourceID(HInstance,108);
     Led.Picture.Bitmap.LoadFromResourceName(HInstance,'LedOff');
     AlarmBtn.Picture.Bitmap.LoadFromResourceID(HInstance,100);
     DateBtn.Picture.Bitmap.LoadFromResourceID(HInstance,102);
     ExitBtn.Picture.Bitmap.LoadFromResourceID(HInstance,104);

     x:=25;
     y:=65;
     T:=formatdatetime('hh:mm:ss',Time);
     for i:=0 to 7 do begin
         digit[i]:=Timage.Create(self);
         with digit[i] do begin
              name:='DigitImg'+IntTostr(i+1);
              OnMouseDown:=BgImage.OnMouseDown;
              Parent:=self;
              Width:=16;
              Height:=29;
              Left:=x;
              Top:=y;
              x:=x+29;
         end;
         C:=copy(T,i+1,1);
         if C=':' then
            Digit[i].Picture.Bitmap.LoadFromResourceID(HInstance,20)
         else
             Digit[i].Picture.Bitmap.LoadFromResourceID(HInstance,StrToInt(C)+10);
     end;
     D:=FormatDateTime('dddd dd, mmmm. yyyy',date)+' ';
end;

procedure TClockFrm.Timer1Timer(Sender: TObject);
begin
     decodeTime(Time,hh,mm,ss,ms);
     T:=formatdatetime('hh:mm:ss',Time);
     for i:=0 to 7 do begin
         C:=copy(T,i+1,1);
         if C<>':' then begin
             Digit[i].Picture.Bitmap:=nil;
             Digit[i].Picture.Bitmap.LoadFromResourceID(HInstance,StrToInt(C)+10);
         end;
     end;
     if AlarmSet and (AH=Integer(hh)) and (AM=Integer(mm)) then begin
        AlarmSet:=False;
        If AlarmFrm.CheckBox1.Checked then PlaySound('alarm',hInstance,
           snd_resource or snd_async);
        MsgFrm.Label1.Caption:=('Lembrete às: '+ IntTostr(ah)+':'+IntToStr(am));
        MsgFrm.Label2.Caption:=('Mensagem:'+#13+AlarmFrm.Memo1.Lines.Text);
        MsgFrm.Showmodal;
        Led.Picture.Bitmap.LoadFromResourceName(HInstance,'LedOff');
        Label1.Caption:='Alarm:desativado';
     end;
     if minimized then
        Application.Title:=T
     else
         Application.Title:='Lembrete Digital';
end;

procedure TClockFrm.AlarmBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if not (ssleft in shift) then exit;
     TImage(sender).Picture.Bitmap.LoadFromResourceID(HInstance,
     TImage(sender).Tag+1);
     PlaySound('click',hInstance,snd_resource or snd_async);
     pressed:=True;
end;

procedure TClockFrm.AlarmBtnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     if not pressed then exit;
     TImage(sender).Picture.Bitmap.LoadFromResourceID(HInstance,
     TImage(sender).Tag);

     case TImage(sender).tag of
     100: begin
        decodeTime(Time,hh,mm,ss,ms);
        AlarmFrm.SpinEdit1.Value:=hh;
        AlarmFrm.SpinEdit2.Value:=mm+1;
        Alarmfrm.showmodal;
        end;
     102: begin
          if Timer2.Enabled then begin
             Timer2.Enabled:=False;
             Label2.Caption:=FormatDateTime('ddd. dd, mm. yyyy',date);
          end
          else begin
               Timer2.Enabled:=True;
               n:=1;
               Label2.Caption:='';
          end;
          end;
     104,108: Application.Terminate;
     106: Application.minimize;
     end;
end;

procedure TClockFrm.AlarmBtnMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
     If Not (ssLeft in shift) then exit;
     if (x<=0) or (x>=Timage(sender).width) or
        (y<=0) or (y>=TImage(sender).height) then begin
        TImage(sender).Picture.Bitmap.LoadFromResourceID(HInstance,
        TImage(sender).Tag);
        Pressed:=False;
        end
     else begin
         TImage(sender).Picture.Bitmap.LoadFromResourceID(HInstance,
         TImage(sender).Tag+1);
         Pressed:=True;
     end;
end;

procedure TClockFrm.BgImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     ReleaseCapture;
     ClockFrm.Perform(Wm_Syscommand,$F012,0);
end;

procedure TClockFrm.Timer2Timer(Sender: TObject);
begin
     if n>=length(D) then begin
        n:=1;
        Label2.Caption:='';
     end;
     label2.caption:=label2.caption+copy(D,n,1);
     n:=n+1;
end;

procedure TClockFrm.FormActivate(Sender: TObject);
begin
     application.OnMinimize:= ChangeCaption;
     application.OnRestore:= ChangeCaption;
end;

end.
