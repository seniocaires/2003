unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm7.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
