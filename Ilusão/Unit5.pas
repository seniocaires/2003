unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses UnitMain;

{$R *.DFM}

procedure TForm5.FormActivate(Sender: TObject);
begin
main.hide;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
main.show;
end;

end.
