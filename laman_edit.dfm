object FEdit: TFEdit
  Left = 430
  Top = 235
  Width = 1060
  Height = 668
  Caption = 'Portal Admin (Edit Menu)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object nama_lbl: TLabel
    Left = 143
    Top = 105
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
    Left = 143
    Top = 138
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
    Left = 143
    Top = 202
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
  object crud_JDWL_lbl: TLabel
    Left = 443
    Top = 263
    Width = 157
    Height = 25
    Caption = 'CRUD JADWAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tlpn_lbl: TLabel
    Left = 143
    Top = 170
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
  object kls_lbl: TLabel
    Left = 564
    Top = 105
    Width = 118
    Height = 20
    Caption = 'NAMA KELAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wali_lbl: TLabel
    Left = 564
    Top = 138
    Width = 112
    Height = 20
    Caption = 'WALI KELAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object crud_KLS_lbl: TLabel
    Left = 664
    Top = 50
    Width = 138
    Height = 25
    Caption = 'CRUD KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object hari_lbl: TLabel
    Left = 143
    Top = 321
    Width = 50
    Height = 20
    Caption = 'HARI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mulai_lbl: TLabel
    Left = 143
    Top = 354
    Width = 138
    Height = 20
    Caption = 'JADWAL MULAI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object selesai_lbl: TLabel
    Left = 143
    Top = 418
    Width = 63
    Height = 20
    Caption = 'KELAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object id_kls_lbl: TLabel
    Left = 143
    Top = 386
    Width = 159
    Height = 20
    Caption = 'JADWAL SELESAI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object id_mapel_lbl: TLabel
    Left = 564
    Top = 321
    Width = 162
    Height = 20
    Caption = 'MATA PELAJARAN:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object id_guru_lbl: TLabel
    Left = 564
    Top = 354
    Width = 156
    Height = 20
    Caption = 'NAMA PENGAJAR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object id_ruang_lbl: TLabel
    Left = 564
    Top = 418
    Width = 117
    Height = 20
    Caption = 'TAHUN AJAR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object id_tahun_lbl: TLabel
    Left = 564
    Top = 386
    Width = 132
    Height = 20
    Caption = 'RUANG KELAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object crud_SG_lbl: TLabel
    Left = 216
    Top = 50
    Width = 191
    Height = 25
    Caption = 'CRUD SIWA/GURU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object nama_edt: TEdit
    Left = 306
    Top = 104
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
    Left = 306
    Top = 136
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
    Left = 306
    Top = 200
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
    Left = 171
    Top = 538
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
    Left = 747
    Top = 538
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
    Left = 315
    Top = 538
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
    Left = 459
    Top = 538
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
    Left = 306
    Top = 168
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
  object kls_edt: TEdit
    Left = 727
    Top = 104
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object wali_edt: TEdit
    Left = 727
    Top = 136
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object hari_edt: TEdit
    Left = 306
    Top = 320
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object mulai_edt: TEdit
    Left = 306
    Top = 352
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object selesai_edt: TEdit
    Left = 306
    Top = 384
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object int_mapel_edt: TEdit
    Left = 727
    Top = 320
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object int_tahun_edt: TEdit
    Left = 727
    Top = 416
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object int_ruang_edt: TEdit
    Left = 727
    Top = 384
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object int_guru_edt: TEdit
    Left = 727
    Top = 352
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object int_kls_edt: TEdit
    Left = 306
    Top = 416
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object view_btn: TBitBtn
    Left = 602
    Top = 537
    Width = 125
    Height = 40
    Caption = 'VIEW'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = view_btnClick
  end
end
