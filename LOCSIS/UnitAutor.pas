unit UnitAutor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls;

type
  TAutor = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Autor: TAutor;

implementation

{$R *.DFM}

procedure TAutor.BitBtn1Click(Sender: TObject);
begin
autor.close;
end;

end.
