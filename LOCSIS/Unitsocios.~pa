unit Unitsocios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, jpeg,
  ExtCtrls;

type
  Tsocios = class(TForm)
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
    lbrelogiosocios: TLabel;
    Label12: TLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBsocios: TDBGrid;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    dtsocios: TDataSource;
    tbsocios: TTable;
    tbsociosNome: TStringField;
    tbsociosEndereco: TStringField;
    tbsociosTelefone: TFloatField;
    tbsociosDatanascimento: TStringField;
    tbsociosEmail: TStringField;
    tbsociosCidade: TStringField;
    tbsociosUf: TStringField;
    tbsociosCep: TStringField;
    tbsociosCpf: TStringField;
    tbsociosIdentidade: TStringField;
    Timer1: TTimer;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBsociosKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  socios: Tsocios;

implementation

uses Unitdicassocio;

{$R *.DFM}

procedure Tsocios.FormActivate(Sender: TObject);
begin
bitbtn3.hide;
tbsocios.open;
BITBTN1.SETFOCUS;
end;

procedure Tsocios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tbsocios.edit;
tbsocios.close;
end;

procedure Tsocios.BitBtn1Click(Sender: TObject);
begin
TBSOCIOS.insert;
dbedit1.setfocus;
bitbtn3.Show;
end;

procedure Tsocios.BitBtn2Click(Sender: TObject);
begin
tbsocios.delete;
end;

procedure Tsocios.BitBtn3Click(Sender: TObject);
begin
tbsocios.post;
bitbtn3.Hide;
end;

procedure Tsocios.Timer1Timer(Sender: TObject);
begin
lbrelogiosocios.caption :=timetostr(time);
end;

procedure Tsocios.BitBtn4Click(Sender: TObject);
begin
socios.Close;
end;

procedure Tsocios.DBsociosKeyPress(Sender: TObject; var Key: Char);
begin
BITBTN3.SHOW;
end;

procedure Tsocios.BitBtn5Click(Sender: TObject);
begin
dicassocios.showmodal;
end;

procedure Tsocios.Edit1Change(Sender: TObject);
begin
//tbsocios.indexfieldNames:='nome';
   //tbsocios.FindNearest([Edit1.text]);
end;

end.
