unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm4.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
