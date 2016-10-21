unit UnitGenero;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, XP_Button, StdCtrls, Mask, DBCtrls, Db, DBTables;

type
  TFrmGenero = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    tfXPButton3: TtfXPButton;
    DBGrid1: TDBGrid;
    TbGenero: TTable;
    DtGenero: TDataSource;
    TbGeneroGnero: TStringField;
    procedure tfXPButton3Click(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGenero: TFrmGenero;

implementation

{$R *.DFM}

procedure TFrmGenero.tfXPButton3Click(Sender: TObject);
begin
TbGenero.delete;
end;

procedure TFrmGenero.tfXPButton1Click(Sender: TObject);
begin
TbGenero.Insert;
Dbedit1.Clear;
Dbedit1.setfocus;
end;

procedure TFrmGenero.tfXPButton2Click(Sender: TObject);
begin
begin
if (Dbedit1.text = '') then
begin
Application.messagebox('Preencha todos os campos antes de salvar!', 'Atenção', MB_OK + MB_ICONINFORMATION);
end;
if (Dbedit1.text <> '')then
begin
TbGenero.Post;
Dbedit1.Clear;
end;
end;
end;
procedure TFrmGenero.FormActivate(Sender: TObject);
begin
TbGenero.open;
end;

procedure TFrmGenero.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TbGenero.close;
end;

end.
