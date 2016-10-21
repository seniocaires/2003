unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm6.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
