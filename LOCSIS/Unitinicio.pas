unit Unitinicio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ToolWin, ComCtrls, ExtCtrls, Menus, jpeg, StdCtrls;

type
  TMain = class(TForm)
    MainMenu1: TMainMenu;
    Mminicio: TMenuItem;
    Scio1: TMenuItem;
    Filme1: TMenuItem;
    Locao1: TMenuItem;
    Locados1: TMenuItem;
    Recebidos1: TMenuItem;
    Iniciar1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    Sobre1: TMenuItem;
    Autor1: TMenuItem;
    LOCSIS1: TMenuItem;
    Sair1: TMenuItem;
    Splitter3: TSplitter;
    ToolBar1: TToolBar;
    Imltoolbar: TImageList;
    Imlmainmenu: TImageList;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton2: TToolButton;
    Image1: TImage;
    Timer1: TTimer;
    lbhora: TLabel;
    lbdata: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Button1: TButton;
    procedure Sair1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Scio1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Filme1Click(Sender: TObject);
    procedure LOCSIS1Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses  UnitAutor, Unitsocios, Unitfilmes, UnitLOCSIS, Unit1;

{$R *.DFM}

procedure TMain.Sair1Click(Sender: TObject);
begin
main.close;
end;

procedure TMain.ToolButton3Click(Sender: TObject);
begin
winexec('calc.exe',sw_shownormal);
end;

procedure TMain.Calculadora1Click(Sender: TObject);
begin
winexec('calc.exe',sw_shownormal);
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
lbhora.caption:=Timetostr(Time);
lbdata.caption:=Datetostr(Date);
end;

procedure TMain.Autor1Click(Sender: TObject);
begin
autor.showmodal;
end;

procedure TMain.ToolButton7Click(Sender: TObject);
begin
autor.showmodal;
end;

procedure TMain.ToolButton4Click(Sender: TObject);
begin
calendario.showmodal;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
//button1.hide;
//MonthCalendar1.Hide;
form2.show;
end;

procedure TMain.Calendrio1Click(Sender: TObject);
begin
calendario.showmodal;
end;

procedure TMain.ToolButton1Click(Sender: TObject);
begin
socios.show;
end;

procedure TMain.Scio1Click(Sender: TObject);
begin
socios.show;
end;

procedure TMain.ToolButton2Click(Sender: TObject);
begin
filmes.show;
end;

procedure TMain.Filme1Click(Sender: TObject);
begin
filmes.show;
end;

procedure TMain.LOCSIS1Click(Sender: TObject);
begin
locsis.showmodal;
end;

procedure TMain.ToolButton8Click(Sender: TObject);
begin
locsis.showmodal;
end;

end.
