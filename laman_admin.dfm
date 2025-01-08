object FAdmin: TFAdmin
  Left = 639
  Top = 336
  Width = 593
  Height = 335
  Caption = 'Portal Admin'
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
  object welcome_lbl: TLabel
    Left = 46
    Top = 38
    Width = 485
    Height = 37
    Caption = 'SELAMAT DATANG ADMIN {id}'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object logout_btn: TBitBtn
    Left = 228
    Top = 218
    Width = 125
    Height = 40
    Caption = 'KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = logout_btnClick
  end
  object view_btn: TBitBtn
    Left = 226
    Top = 104
    Width = 125
    Height = 40
    Caption = 'VIEW'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = view_btnClick
  end
  object edt_btn: TBitBtn
    Left = 226
    Top = 160
    Width = 125
    Height = 40
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = edt_btnClick
  end
end
