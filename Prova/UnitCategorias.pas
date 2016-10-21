unit UnitCategorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  XP_Button, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Db, DBTables;

type
  TFrmCategoria = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    Label1: TLabel;
    TbCategorias: TTable;
    DtCategorias: TDataSource;
    TbCategoriasCategoria: TStringField;
    tfXPButton3: TtfXPButton;
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton2Click(Sender: TObject);
    procedure tfXPButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCategoria: TFrmCategoria;

implementation

{$R *.DFM}

procedure TFrmCategoria.tfXPButton1Click(Sender: TObject);
begin
TbCategorias.Insert;
Dbedit1.Clear;
Dbedit1.setfocus;
end;

procedure TFrmCategoria.tfXPButton2Click(Sender: TObject);
begin
begin
if (Dbedit1.text = '') then
begin
Application.messagebox('Preencha todos os campos antes de salvar!', 'Atenção', MB_OK + MB_ICONINFORMATION);
end;
if (Dbedit1.text <> '')then
begin
TbCategorias.Post;
Dbedit1.Clear;
end;
end;
end;

procedure TFrmCategoria.tfXPButton3Click(Sender: TObject);
begin
Tbcategorias.delete;
end;

procedure TFrmCategoria.FormActivate(Sender: TObject);
begin
Tbcategorias.open;
end;

procedure TFrmCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TbCategorias.close;
end;

end.
