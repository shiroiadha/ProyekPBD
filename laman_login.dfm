object FLogin: TFLogin
  Left = 689
  Top = 317
  Width = 453
  Height = 340
  Caption = 'Laman Login'
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
  object user_lbl: TLabel
    Left = 71
    Top = 123
    Width = 106
    Height = 20
    Caption = 'USERNAME:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object passwd_lbl: TLabel
    Left = 71
    Top = 156
    Width = 108
    Height = 20
    Caption = 'PASSWORD:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object login_lbl: TLabel
    Left = 159
    Top = 58
    Width = 119
    Height = 37
    Caption = 'MASUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object user_edt: TEdit
    Left = 191
    Top = 122
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'admin1'
  end
  object passwd_edt: TEdit
    Left = 191
    Top = 154
    Width = 175
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = 'adminpass'
  end
  object login_btn: TBitBtn
    Left = 80
    Top = 202
    Width = 125
    Height = 40
    Caption = 'MASUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = login_btnClick
  end
  object cancel_btn: TBitBtn
    Left = 232
    Top = 202
    Width = 125
    Height = 40
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = cancel_btnClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP'
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'jadwalngajar'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\DATA FOLDER\Delphi Project\ProyekPt2\tubes\libmysql.dll'
    Left = 200
    Top = 8
  end
end
