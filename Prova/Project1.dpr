program Project1;

uses
  Forms,
  UnitAbertura in 'UnitAbertura.pas' {FrmAbertura},
  UnitMain in 'UnitMain.pas' {FrmMain},
  UnitSenha in 'UnitSenha.pas' {FrmSenha},
  UnitCalendario in 'UnitCalendario.pas' {FrmCalendario},
  UnitSocios in 'UnitSocios.pas' {FrmSocios},
  UnitFilmes in 'UnitFilmes.pas' {FrmFilmes},
  UnitUsuarios in 'UnitUsuarios.pas' {FrmUsuarios},
  UnitCategorias in 'UnitCategorias.pas' {FrmCategoria},
  UnitGenero in 'UnitGenero.pas' {FrmGenero};

{$R *.RES}

begin
  FrmAbertura:=TFrmAbertura.Create(application);
  FrmAbertura.Show;
  FrmAbertura.Update;
  Application.Title := 'LOCSIS - Sistema de Controle de Video Locadora - SEMMA®soft. - Sênio Teixeira Caires';
//  Application.Initialize;
 // Application.CreateForm(TFrmAbertura, FrmAbertura);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmSenha, FrmSenha);
  Application.CreateForm(TFrmCalendario, FrmCalendario);
  Application.CreateForm(TFrmSocios, FrmSocios);
  Application.CreateForm(TFrmFilmes, FrmFilmes);
  Application.CreateForm(TFrmUsuarios, FrmUsuarios);
  Application.CreateForm(TFrmCategoria, FrmCategoria);
  Application.CreateForm(TFrmGenero, FrmGenero);
  FrmAbertura.Hide;
  FrmAbertura.Free;
  FrmSenha.ShowModal;
  Application.Run;
end.
