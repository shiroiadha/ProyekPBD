object FFP: TFFP
  Left = 482
  Top = 272
  Width = 834
  Height = 426
  Caption = 'Portal Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 61
    Top = 119
    Width = 697
    Height = 37
    Caption = 'SELAMAT DATANG DI PORTAL SEKOLAH :)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 269
    Top = 167
    Width = 281
    Height = 24
    Caption = 'Silahkan pilih menu yang tersedia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object masuk_btn: TBitBtn
    Left = 346
    Top = 208
    Width = 125
    Height = 40
    Caption = 'MASUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = masuk_btnClick
  end
end
