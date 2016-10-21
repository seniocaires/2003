unit Unitbiblioteca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Db, DBTables, Buttons, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    Bevel3: TBevel;
    Label7: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unitsenha;

{$R *.DFM}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
bitbtn5.caption:=datetostr(date);
bitbtn4.caption:=timetostr(time);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
bitbtn1.Hide;
table1.Open;
FORM2.HIDE;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
table1.Edit;
table1.close;
FORM2.CLOSE;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
table1.insert;
dbedit1.setfocus;
bitbtn1.show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
TABLE1 ['DATAEMP']:=DATETOSTR(NOW);
table1.post;
bitbtn1.hide;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
table1.delete;
end;

end.
