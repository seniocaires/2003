program ProjetoLOCSIS;

uses
  Forms,
  Unitinicio in 'Unitinicio.pas' {Main},
  UnitAutor in 'UnitAutor.pas' {Autor},
  Unitsocios in 'Unitsocios.pas' {socios},
  Unitdicassocio in 'Unitdicassocio.pas' {Dicassocios},
  Unitfilmes in 'Unitfilmes.pas' {Filmes},
  UnitLOCSIS in 'UnitLOCSIS.pas' {LOCSIS},
  Unitcalendario in '..\..\Dicas Delphi\Glyph\Unitcalendario.pas' {Calendario};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'LOCSIS';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TAutor, Autor);
  Application.CreateForm(Tsocios, socios);
  Application.CreateForm(TDicassocios, Dicassocios);
  Application.CreateForm(TFilmes, Filmes);
  Application.CreateForm(TLOCSIS, LOCSIS);
  Application.CreateForm(TCalendario, Calendario);
  Application.Run;
end.
