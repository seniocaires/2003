unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitMain, Unitlogica;

{$R *.DFM}

procedure TForm1.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
logica.showmodal;
end;

end.
