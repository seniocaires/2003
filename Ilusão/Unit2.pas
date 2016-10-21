unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm2.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
