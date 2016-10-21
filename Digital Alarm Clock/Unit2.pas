unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls,mmsystem;

type
  TAlarmFrm = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    CancelBtn: TButton;
    SetBtn: TButton;
    Label2: TLabel;
    Memo1: TMemo;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Image1: TImage;
    UnsetBtn: TButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure SetBtnClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Change(Sender: TObject);
    procedure UnsetBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlarmFrm: TAlarmFrm;

implementation

uses Unit1;

{$R *.dfm}

procedure TAlarmFrm.CancelBtnClick(Sender: TObject);
begin
     PlaySound('click',hInstance,snd_resource or snd_async);
     AlarmFrm.Close;
end;

procedure TAlarmFrm.SetBtnClick(Sender: TObject);
begin
     PlaySound('click',hInstance,snd_resource or snd_async);
     ClockFrm.Ah:=SpinEdit1.value;
     ClockFrm.Am:=SpinEdit2.value;
     ClockFrm.Led.Picture.Bitmap.LoadFromResourceName(HInstance,'LedOn');
     ClockFrm.Label1.Caption:= 'Alarm: '+
                               IntToStr(SpinEdit1.Value)+ ':'+
                               IntToStr(SpinEdit2.Value);
     ClockFrm.Label1.Visible:=True;
     ClockFrm.AlarmSet:=True;
     AlarmFrm.Close;
end;

procedure TAlarmFrm.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
     if (Memo1.Lines.count>3) and (key<>#8) then key:=#0;
end;


procedure TAlarmFrm.Memo1Change(Sender: TObject);
begin
     Panel1.Caption:='Caracteres restante: ' + IntTostr(100-Length(Memo1.Text));
end;

procedure TAlarmFrm.UnsetBtnClick(Sender: TObject);
begin
     if not ClockFrm.AlarmSet then exit;
     PlaySound('click',hInstance,snd_resource or snd_async);
     ClockFrm.Led.Picture.Bitmap.LoadFromResourceName(Hinstance,'LedOff');
     ClockFrm.Label1.Caption:='Alarm:desativado';
     ClockFrm.AlarmSet:=False;
     AlarmFrm.Close;
end;

end.
