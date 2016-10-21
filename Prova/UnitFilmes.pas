unit UnitFilmes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  XP_Button, DBCtrls, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, XP_Panel,
  Mask, ExtDlgs, Db, DBTables;

type
  TFrmFilmes = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    tfXPButton3: TtfXPButton;
    tfXPButton4: TtfXPButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ttfXP_Panel1: ttfXP_Panel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label8: TLabel;
    Edit1: TEdit;
    Bevel1: TBevel;
    Timer1: TTimer;
    Label9: TLabel;
    Bevel2: TBevel;
    TbFilmes: TTable;
    DtFilmes: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    DtCapaFilmes: TDataSource;
    TbCapaFilmes: TTable;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    TbFilmesCdigo: TAutoIncField;
    TbFilmesTtulo: TStringField;
    TbFilmesDatadeLan: TStringField;
    TbFilmesDurao: TStringField;
    TbFilmesDistribuidora: TStringField;
    TbFilmesCategoria: TStringField;
    TbFilmesGnero: TStringField;
    TbCapaFilmesCapa: TStringField;
    DtCategorias: TDataSource;
    TbCategorias: TTable;
    TbCategoriasCategoria: TStringField;
    DtGenero: TDataSource;
    TbGenero: TTable;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tfXPButton3Click(Sender: TObject);
    procedure tfXPButton4Click(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton2Click(Sender: TObject);
    procedure TbCapaFilmesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFilmes: TFrmFilmes;

implementation

{$R *.DFM}

procedure TFrmFilmes.Timer1Timer(Sender: TObject);
begin
Label9.caption:=timetostr(time);
end;

procedure TFrmFilmes.FormActivate(Sender: TObject);
begin
TbGenero.open;
TbFilmes.open;
TbCapaFilmes.open;
TbCategorias.open;
tfXPButton3.enabled:=false;
end;

procedure TFrmFilmes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TbGenero.Close;
TbFilmes.close;
TbCapaFilmes.close;
TbCategorias.close;
end;

procedure TFrmFilmes.tfXPButton3Click(Sender: TObject);
begin
DBEdit3.text:=Maskedit1.text;
DBEdit2.text:=Maskedit2.text;
TbFilmes.Insert;
        TbFilmes['Categoria'] := tbCategorias['Categoria'];
tfXPbutton3.enabled:=false;
TbFilmes.post;
Application.messagebox('Cadastro efetuado com sucesso!', 'SEMMA®soft.', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmFilmes.tfXPButton4Click(Sender: TObject);
begin
TbFilmes.delete;
TbCapaFilmes.delete;
end;

procedure TFrmFilmes.tfXPButton1Click(Sender: TObject);
begin
TbFilmes.Insert;
Dbedit1.setfocus;
tfXPbutton3.enabled:=true;
Maskedit1.clear;
Maskedit2.clear;
end;

procedure TFrmFilmes.tfXPButton2Click(Sender: TObject);
begin
OpenPictureDialog1.Execute;
    if OpenPictureDialog1.FileName<>'' Then
     begin
      TbCapaFilmes.Edit;
       TbCapaFilmes['Capa']:=ExtractFilePath(OpenPictureDialog1.FileName) + ExtractFileName(OpenPictureDialog1.FileName);
        TbCapaFilmes.Post;
         Image1.Show;
          Image1.Picture.LoadFromFile(TbCapaFilmes['Capa']);
       end;
end;

procedure TFrmFilmes.TbCapaFilmesAfterScroll(DataSet: TDataSet);
begin
if TbCapaFilmes['Capa']<>null then begin
     Image1.Show;
      Image1.Picture.LoadFromFile(TbCapaFilmes['Capa']);
       end else
        Image1.Hide;
end;


end.
