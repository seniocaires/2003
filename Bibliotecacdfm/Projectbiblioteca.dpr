program Projectbiblioteca;

uses
  Forms,
  Unitbiblioteca in 'Unitbiblioteca.pas' {Form1},
  Unitsenha in 'Unitsenha.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
