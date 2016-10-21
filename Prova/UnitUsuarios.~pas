unit UnitUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, XP_Button, Mask, DBCtrls, StdCtrls, Db, DBTables;

type
  TFrmUsuarios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    tfXPButton3: TtfXPButton;
    DBGrid1: TDBGrid;
    MaskEdit1: TMaskEdit;
    DtUsuarios: TDataSource;
    TbUsuarios: TTable;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton3Click(Sender: TObject);
    procedure tfXPButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.DFM}

procedure TFrmUsuarios.FormActivate(Sender: TObject);
begin
//TbUsuarios.Edit;
TbUsuarios.open;
end;

procedure TFrmUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TbUsuarios.close;
end;

procedure TFrmUsuarios.tfXPButton1Click(Sender: TObject);
begin
TbUsuarios.Insert;
Dbedit1.Clear;
Maskedit1.clear;
Dbedit2.Clear;
Dbedit1.setfocus;
end;

procedure TFrmUsuarios.tfXPButton3Click(Sender: TObject);
begin
TbUsuarios.delete;
Dbedit1.Clear;
Maskedit1.clear;
Dbedit2.Clear;
end;

procedure TFrmUsuarios.tfXPButton2Click(Sender: TObject);
begin
if (Dbedit1.text = '') or (Maskedit1.text ='') then
begin
Application.messagebox('Preencha todos os campos antes de salvar!', 'Atenção', MB_OK + MB_ICONINFORMATION);
end;
if (Dbedit1.text <> '') and (Maskedit1.text <>'') then
begin
Dbedit2.text:=maskedit1.text;
TbUsuarios.Post;
Dbedit1.Clear;
Maskedit1.clear;
Dbedit2.Clear;
end;
end;
end.
