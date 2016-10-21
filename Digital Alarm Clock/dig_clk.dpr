program dig_clk;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ClockFrm},
  Unit2 in 'Unit2.pas' {AlarmFrm},
  Unit3 in 'Unit3.pas' {MsgFrm};

{$R *.res}
{$R buttons.res}

begin
  Application.Initialize;
  Application.Title := 'Digital Alarm Clock';
  Application.CreateForm(TClockFrm, ClockFrm);
  Application.CreateForm(TAlarmFrm, AlarmFrm);
  Application.CreateForm(TMsgFrm, MsgFrm);
  Application.Run;
end.
