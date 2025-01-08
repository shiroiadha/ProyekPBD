object FEdit: TFEdit
  Left = 645
  Top = 321
  Width = 670
  Height = 496
  Caption = 'Portal Admin (Edit Menu)'
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
  object nama_lbl: TLabel
    Left = 159
    Top = 122
    Width = 56
    Height = 20
    Caption = 'NAMA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ni_lbl: TLabel
    Left = 159
    Top = 155
    Width = 131
    Height = 20
    Caption = 'NOMOR INDUK:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object role_lbl: TLabel
    Left = 159
    Top = 219
    Width = 54
    Height = 20
    Caption = 'ROLE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object add_SG_lbl: TLabel
    Left = 224
    Top = 67
    Width = 206
    Height = 25
    Caption = 'CRUD SISWA/GURU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tlpn_lbl: TLabel
    Left = 159
    Top = 187
    Width = 121
    Height = 20
    Caption = 'NO. TELEPON:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object nama_edt: TEdit
    Left = 322
    Top = 121
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object ni_edt: TEdit
    Left = 322
    Top = 153
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object role_edt: TEdit
    Left = 322
    Top = 217
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object add_btn: TBitBtn
    Left = 192
    Top = 307
    Width = 125
    Height = 40
    Caption = 'DAFTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = add_btnClick
  end
  object cancel_btn: TBitBtn
    Left = 336
    Top = 363
    Width = 125
    Height = 40
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = cancel_btnClick
  end
  object update_btn: TBitBtn
    Left = 336
    Top = 307
    Width = 125
    Height = 40
    Caption = 'UPDATE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = update_btnClick
  end
  object delete_btn: TBitBtn
    Left = 192
    Top = 363
    Width = 125
    Height = 40
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = delete_btnClick
  end
  object tlpn_edt: TEdit
    Left = 322
    Top = 185
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
