object FrmCalendario: TFrmCalendario
  Left = 334
  Top = 191
  Width = 218
  Height = 229
  BorderIcons = [biSystemMenu]
  Caption = 'LOCSIS - Calend�rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 209
    Height = 201
    Shape = bsFrame
    Style = bsRaised
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 191
    Height = 154
    Date = 37911
    TabOrder = 0
  end
  object tfXPButton1: TtfXPButton
    Left = 72
    Top = 168
    Width = 73
    Height = 22
    OnClick = tfXPButton1Click
    Caption = 'OK'
    Glyph.Data = {
      07544269746D61705A010000424D5A0100000000000076000000280000001200
      0000130000000100040000000000E4000000CE0E0000C40E0000100000000000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00777778877777777777000000777784487777777777000000777844448777
      77777700000077844444487777777700000078444C4444877777770000007444
      C4C444877777770000007C4C444C444877777700000078C44444C44487777700
      00008444C4444C44487777000000444C7C4448C4448777000000C4C777C4448C
      4448770000007C77777C4448C4448700000077777777C4448C44870000007777
      77777C4448C4470000007777777777C4448C7700000077777777777C44487700
      0000777777777777C448770000007777777777777C4477000000777777777777
      77C777000000}
    GlyphLayout = glLeft
  end
end