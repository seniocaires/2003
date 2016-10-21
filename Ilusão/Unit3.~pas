unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses UnitMain, Unitresposta;

{$R *.DFM}

procedure TForm3.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
resposta.showmodal;
end;

end.
