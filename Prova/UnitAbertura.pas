unit UnitAbertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls;

type
  TFrmAbertura = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbertura: TFrmAbertura;

implementation

uses UnitMain;

{$R *.DFM}

procedure TFrmAbertura.Button1Click(Sender: TObject);
begin
//frmsenha.show;
end;

end.
