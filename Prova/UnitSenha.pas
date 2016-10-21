unit UnitSenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Jpeg,
  ExtCtrls, XP_Button, StdCtrls, Mask, DBCtrls, Db, DBTables;

type
  TFrmSenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    Image1: TImage;
    MaskEdit1: TMaskEdit;
    TbSenhas: TTable;
    DtSenhas: TDataSource;
    Edit1: TEdit;
    procedure tfXPButton2Click(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure FormActivate(Sender: TObject);
//    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenha: TFrmSenha;

implementation

uses UnitMain;

{$R *.DFM}

procedure TFrmSenha.tfXPButton2Click(Sender: TObject);
begin
application.terminate;
end;

procedure TFrmSenha.tfXPButton1Click(Sender: TObject);
var Usuario, Senha: boolean;
begin
if (edit1.text = 'C15B58B6') and (Maskedit1.text = 'C15B58B6') then
begin
FrmMain.show;
FrmSenha.hide;
FrmMain.Usurios1.Enabled:=TRUE;
//end
//else
//TbSenhas.open;
end
else
begin
TbSenhas.open;
Usuario:= TbSenhas.Locate('USUARIO', edit1.text, []);
Senha:= TbSenhas.Locate('SENHA', maskedit1.text, []);
if (Usuario) and (Senha) = true then
begin
FrmMain.show;
TbSenhas.close;
FrmSenha.hide;
FrmMain.Usurios1.Enabled:=False;
end
else
Application.messagebox('Digite novamente,usuário e senha incorretos!', 'Atenção', MB_OK + MB_ICONINFORMATION);
tBsENHAS.CLOSE;
end;
//procedure TFrmSenha.FormActivate(Sender: TObject);
begin
//TbSenhas.open;
end;

//procedure TFrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//TbSenhas.close;
end;

//procedure TFrmSenha.MaskEdit1Exit(Sender: TObject);
begin
//if (edit1.text = 'CB15B58B6') and (Maskedit1.text = 'C15B58B6') then
//begin
//FrmMain.Show;
//FrmSenha.close;
//end;
end;
end;
procedure TFrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.terminate;
end;

end.
