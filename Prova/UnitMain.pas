unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, XP_MainMenu, ExtCtrls, ImgList;

type
  TFrmMain = class(TForm)
    ttfXPMainMenu1: ttfXPMainMenu;
    Cadastrar1: TMenuItem;
    Scios1: TMenuItem;
    Filmes1: TMenuItem;
    Usurios1: TMenuItem;
    Locao1: TMenuItem;
    Locados1: TMenuItem;
    Recebidos1: TMenuItem;
    Recebidos2: TMenuItem;
    Iniciar1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    Sobre1: TMenuItem;
    Autor1: TMenuItem;
    LOCSIS1: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    Splitter1: TSplitter;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Gnero1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Scios1Click(Sender: TObject);
    procedure Filmes1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Gnero1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses UnitCalendario, UnitSocios, UnitFilmes, UnitUsuarios, UnitGenero,
  UnitCategorias;

{$R *.DFM}

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
application.terminate;
end;

procedure TFrmMain.Calendrio1Click(Sender: TObject);
begin
FrmCalendario.show;
end;

procedure TFrmMain.Calculadora1Click(Sender: TObject);
begin
winexec('calc.exe',sw_shownormal);
end;

procedure TFrmMain.Scios1Click(Sender: TObject);
begin
FrmSocios.showmodal;
end;

procedure TFrmMain.Filmes1Click(Sender: TObject);
begin
FrmFilmes.showmodal;
end;

procedure TFrmMain.Usurios1Click(Sender: TObject);
begin
FrmUsuarios.showmodal;
end;

procedure TFrmMain.Gnero1Click(Sender: TObject);
begin
FrmGenero.Showmodal;
end;

procedure TFrmMain.Categoria1Click(Sender: TObject);
begin
FrmCategoria.showmodal;
end;

end.
