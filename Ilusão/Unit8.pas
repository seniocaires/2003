unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm8.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
