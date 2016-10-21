unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls,mmsystem;

type
  TMsgFrm = class(TForm)
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgFrm: TMsgFrm;

implementation

{$R *.dfm}

procedure TMsgFrm.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TMsgFrm.Label3Click(Sender: TObject);
begin
     PlaySound('click',hInstance,snd_resource or snd_async);
     close;
end;

procedure TMsgFrm.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     label3.color:=clBlue;
end;

procedure TMsgFrm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     label3.color:=clNavy;
end;

procedure TMsgFrm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
     ReleaseCapture;
     MsgFrm.Perform(Wm_SysCommand,$F012,0);
end;

end.
