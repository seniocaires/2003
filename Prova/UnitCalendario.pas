unit UnitCalendario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, XP_Button, ComCtrls;

type
  TFrmCalendario = class(TForm)
    MonthCalendar1: TMonthCalendar;
    tfXPButton1: TtfXPButton;
    Bevel1: TBevel;
    procedure tfXPButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalendario: TFrmCalendario;

implementation

{$R *.DFM}

procedure TFrmCalendario.tfXPButton1Click(Sender: TObject);
begin
Frmcalendario.close;
end;

end.
