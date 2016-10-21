unit UnitSocios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, XP_Panel, XP_Button, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  jpeg, ExtDlgs, Db, DBTables;

type
  TFrmSocios = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    tfXPButton1: TtfXPButton;
    tfXPButton2: TtfXPButton;
    tfXPButton3: TtfXPButton;
    tfXPButton4: TtfXPButton;
    ttfXP_Panel1: ttfXP_Panel;
    Image1: TImage;
    Bevel1: TBevel;
    Label12: TLabel;
    Edit1: TEdit;
    Bevel2: TBevel;
    Timer1: TTimer;
    DtSocios: TDataSource;
    TbSocios: TTable;
    OpenPictureDialog1: TOpenPictureDialog;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    DBComboBox1: TDBComboBox;
    Label13: TLabel;
    TbSociosNome: TStringField;
    TbSociosEndereo: TStringField;
    TbSociosEmail: TStringField;
    TbSociosDatadeNasc: TStringField;
    TbSociosTelefone: TStringField;
    TbSociosCidade: TStringField;
    TbSociosEstado: TStringField;
    TbSociosCEP: TStringField;
    TbSociosNIdentidade: TStringField;
    TbSociosCPF: TStringField;
    TbSociosCdigo: TAutoIncField;
    TbSociosFoto: TStringField;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure tfXPButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tfXPButton2Click(Sender: TObject);
    procedure tfXPButton1Click(Sender: TObject);
    procedure tfXPButton4Click(Sender: TObject);
    procedure TbFotoSociosAfterScroll(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TbSociosAfterScroll(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSocios: TFrmSocios;

implementation

{$R *.DFM}

procedure TFrmSocios.Timer1Timer(Sender: TObject);
begin
Label13.caption:=timetostr(time);
end;

procedure TFrmSocios.tfXPButton3Click(Sender: TObject);
begin
Tbsocios.edit;
Dbedit3.text:=Maskedit1.text;
Dbedit4.text:=Maskedit2.text;
Dbedit7.text:=Maskedit3.text;
Dbedit8.text:=Maskedit4.text;
Dbedit9.text:=Maskedit5.text;
tfXPbutton3.enabled:=false;
TbSocios.post;
Application.messagebox('Cadastro efetuado com sucesso!', 'SEMMA®soft.', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmSocios.FormActivate(Sender: TObject);
begin
TbSocios.open;
tfXPButton3.enabled:=false;
Maskedit1.text:=Dbedit3.text;
Maskedit2.text:=Dbedit4.text;
Maskedit3.text:=Dbedit7.text;
Maskedit4.text:=Dbedit8.text;
Maskedit5.text:=Dbedit9.text;
end;

procedure TFrmSocios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TbSocios.close;
end;

procedure TFrmSocios.tfXPButton2Click(Sender: TObject);
begin
TbSocios.delete;
end;

procedure TFrmSocios.tfXPButton1Click(Sender: TObject);
begin
TbSocios.Insert;
Dbedit1.setfocus;
tfXPbutton3.enabled:=true;
Maskedit1.clear;
Maskedit2.clear;
Maskedit3.clear;
Maskedit4.clear;
Maskedit5.clear;
end;

procedure TFrmSocios.tfXPButton4Click(Sender: TObject);
begin
 OpenPictureDialog1.Execute;
    if OpenPictureDialog1.FileName<>'' Then
     begin
      TbSocios.Edit;
       TbSocios['Foto']:=ExtractFilePath(OpenPictureDialog1.FileName) + ExtractFileName(OpenPictureDialog1.FileName);
        TbSocios.Post;
         Image1.Show;
          Image1.Picture.LoadFromFile(TbSocios['Foto']);
       end;
end;

procedure TFrmSocios.TbFotoSociosAfterScroll(DataSet: TDataSet);
begin
if TbSocios['Foto']<>null then begin
     Image1.Show;
      Image1.Picture.LoadFromFile(TbSocios['Foto']);
       end else
        Image1.Hide;
end;

procedure TFrmSocios.Edit1Change(Sender: TObject);
begin
TbSocios.IndexFieldNames:='Nome';
TbSocios.FindNearest([Edit1.text]);
Maskedit1.text:=Dbedit3.text;
Maskedit2.text:=Dbedit4.text;
Maskedit3.text:=Dbedit7.text;
Maskedit4.text:=Dbedit8.text;
Maskedit5.text:=Dbedit9.text;
end;

procedure TFrmSocios.Button1Click(Sender: TObject);
begin
tbsocios.insert;
tbsocios.DeleteTable;
tbsocios.post;
end;

procedure TFrmSocios.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
key:=upcase(key);
tfXPbutton3.Enabled:=true;
end;

procedure TFrmSocios.TbSociosAfterScroll(DataSet: TDataSet);
begin
if TbSocios['Foto']<>null then begin
     Image1.Show;
      Image1.Picture.LoadFromFile(TbSocios['Foto']);
       end else
        Image1.Hide;
end;

procedure TFrmSocios.DBGrid1CellClick(Column: TColumn);
begin
Maskedit1.text:=Dbedit3.text;
Maskedit2.text:=Dbedit4.text;
Maskedit3.text:=Dbedit7.text;
Maskedit4.text:=Dbedit8.text;
Maskedit5.text:=Dbedit9.text;
end;

end.
