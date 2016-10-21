unit Unitdicassocio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TDicassocios = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dicassocios: TDicassocios;

implementation

{$R *.DFM}

procedure TDicassocios.BitBtn1Click(Sender: TObject);
begin
dicassocios.close;
end;

procedure TDicassocios.FormActivate(Sender: TObject);
begin
bitbtn1.setfocus;
end;

end.
