unit Unitfilmes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, jpeg, ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons, Grids,
  DBGrids;

type
  TFilmes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    Image1: TImage;
    tbfilmes: TTable;
    dtfilmes: TDataSource;
    DBGrid1: TDBGrid;
    tbfilmesNome: TStringField;
    tbfilmesGenero: TStringField;
    tbfilmesDiretor: TStringField;
    tbfilmesAno: TStringField;
    tbfilmesSinopse: TMemoField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Timer1: TTimer;
    lbrelogiofilmes: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    DBComboBox1: TDBComboBox;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filmes: TFilmes;

implementation

{$R *.DFM}

procedure TFilmes.Timer1Timer(Sender: TObject);
begin
lbrelogiofilmes.caption:=Timetostr(Time);
end;

procedure TFilmes.FormActivate(Sender: TObject);
begin
bitbtn3.Hide;
tbfilmes.open;
bitbtn1.setfocus;
end;

procedure TFilmes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tbfilmes.edit;
tbfilmes.close;
end;

procedure TFilmes.BitBtn4Click(Sender: TObject);
begin
filmes.close;
end;

procedure TFilmes.BitBtn2Click(Sender: TObject);
begin
tbfilmes.delete;
end;

procedure TFilmes.BitBtn3Click(Sender: TObject);
begin
tbfilmes.post;
bitbtn3.hide;
end;

procedure TFilmes.BitBtn1Click(Sender: TObject);
begin
tbfilmes.insert;
bitbtn3.show;
DBEDIT1.SETFOCUS;
end;

procedure TFilmes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
bitbtn3.show;
end;

procedure TFilmes.Edit1Change(Sender: TObject);
begin
//tbfilmes.indexfieldNames:='nome';
   //tbfilmes.FindNearest([Edit1.text]);
end;

end.
