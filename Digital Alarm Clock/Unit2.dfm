object AlarmFrm: TAlarmFrm
  Left = 432
  Top = 209
  BorderStyle = bsSingle
  Caption = 'Lembrete                    SEMMA�soft.'
  ClientHeight = 190
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 55
    Top = 5
    Width = 226
    Height = 21
    Caption = 'Hora e mensagem do lembrete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 55
    Top = 38
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label2: TLabel
    Left = 192
    Top = 40
    Width = 40
    Height = 13
    Caption = 'Minutos:'
  end
  object Label4: TLabel
    Left = 5
    Top = 70
    Width = 55
    Height = 13
    Caption = 'Mensagem:'
  end
  object Image1: TImage
    Left = 5
    Top = 5
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000008B70000000000000037
      800000000000000B700333333330037000000000000000000730000000037000
      0000000000000080300777CCF7F003080000000000000803077F7FCC7F7F7030
      800000000000803074C7F7F7FFFCCF0308000000000007077CCF7FFFFFFCCFF0
      300000000008B077F7F7FFFFFFFFFFFF038000000000704C7F7FFFFFFFFFFFCC
      03000000008B07CCF7FFFFFF7FFFFFCCF03800000007077F7FFFFFF07FFFFFFF
      F0300000000B07F7F7FFFFF0777777FFF0300000000704CF7FFFF00900000FFC
      C0300000000B04C7F7FFFFF07FFFFFFCC03000000007077F7FFFFFF07FFFFFFF
      F0300000000B07F7F7FFFFF07FFFFFFFF03000000087077CCF7FFFF07FFFFFCC
      F03800000000B074C7FFFFF07FFFFFC403000000000870777F7FFFF07FFFFFF7
      0380000000000B077CC7FFF0FFFCCF7030000000000080B074CF7F7FFFFC4703
      080000000000080B07777744777770308000000000000080B007774477700308
      00000000000080080B700000000330800800000000083000000BBBB7B7300008
      0380000000007370800000000000080333000000000037BBB080000000080733
      3300000000087F7BB7300000000BBB773780000000000BFBBB730C0040BBB7FB
      700000000000080FB7300EC4400BFFB080000000000000080000000000000080
      00000000F8FFFC7FF860187FFC0000FFFE0001FFFC0000FFF800007FF000003F
      F000003FE000001FE000001FC000000FC000000FC000000FC000000FC000000F
      C000000FC000000FC000000FE000001FE000001FF000003FF000003FF800007F
      FC0000FFF60001BFE180061FE060181FE01CE01FE00CC01FF000003FF808407F
      FE1FE1FF}
  end
  object SpinEdit1: TSpinEdit
    Left = 88
    Top = 35
    Width = 41
    Height = 26
    Cursor = crHandPoint
    EditorEnabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 2
    MaxValue = 24
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 240
    Top = 35
    Width = 41
    Height = 26
    Cursor = crHandPoint
    EditorEnabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 2
    MaxValue = 59
    MinValue = 0
    ParentFont = False
    TabOrder = 1
    Value = 0
  end
  object CancelBtn: TButton
    Left = 243
    Top = 165
    Width = 41
    Height = 21
    Cursor = crHandPoint
    Caption = '&Voltar'
    TabOrder = 2
    OnClick = CancelBtnClick
  end
  object SetBtn: TButton
    Left = 5
    Top = 165
    Width = 46
    Height = 21
    Cursor = crHandPoint
    Caption = '&Ativar'
    TabOrder = 3
    OnClick = SetBtnClick
  end
  object Memo1: TMemo
    Left = 5
    Top = 90
    Width = 276
    Height = 66
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 100
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    OnChange = Memo1Change
    OnKeyPress = Memo1KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 192
    Top = 72
    Width = 90
    Height = 16
    Cursor = crHandPoint
    Caption = 'Usar Som'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 113
    Top = 165
    Width = 128
    Height = 21
    Caption = 'Caracteres restantes 100'
    TabOrder = 6
  end
  object UnsetBtn: TButton
    Left = 53
    Top = 165
    Width = 58
    Height = 21
    Cursor = crHandPoint
    Caption = '&Desativar'
    TabOrder = 7
    OnClick = UnsetBtnClick
  end
end
