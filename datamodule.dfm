object FDM: TFDM
  OldCreateOrder = False
  Left = 344
  Top = 672
  Height = 304
  Width = 580
  object jadwalG_ds: TDataSource
    DataSet = jadwalG_zq
    Left = 40
    Top = 80
  end
  object jadwalG_zq: TZQuery
    Connection = FLogin.con1
    SQL.Strings = (
      'SELECT '
      '    jadwal.id_jadwal,'
      '    jadwal.hari,'
      '    jadwal.jam_mulai,'
      '    jadwal.jam_selesai,'
      '    matapelajaran.nama_mapel,'
      '    guru.nama AS nama_guru,'
      '    ruangkelas.nama_ruang'
      'FROM '
      '    jadwal'
      'JOIN '
      '    guru ON jadwal.id_guru = guru.id_guru'
      'JOIN '
      '    kelas ON jadwal.id_kelas = kelas.id_kelas'
      'JOIN '
      '    matapelajaran ON jadwal.id_mapel = mataPelajaran.id_mapel'
      'JOIN '
      '    ruangKelas ON jadwal.id_ruang = ruangKelas.id_ruang'
      'WHERE '
      '    guru.id_guru = :id_guru;')
    Params = <
      item
        Name = 'id_guru'
      end>
    Left = 40
    Top = 16
    ParamData = <
      item
        Name = 'id_guru'
      end>
  end
  object jadwalS_ds: TDataSource
    DataSet = jadwalS_zq
    Left = 104
    Top = 80
  end
  object jadwalS_zq: TZQuery
    Connection = FLogin.con1
    SQL.Strings = (
      'SELECT '
      '   jadwal.id_jadwal,'
      '    jadwal.hari,'
      '    jadwal.jam_mulai,'
      '    jadwal.jam_selesai,'
      '    kelas.nama_kelas,'
      '    matapelajaran.nama_mapel,'
      '    ruangKelas.nama_ruang'
      'FROM '
      '    siswa'
      'JOIN '
      '    kelas ON siswa.id_kelas= kelas.id_kelas'
      'JOIN '
      '    jadwal ON jadwal.id_kelas = kelas.id_kelas'
      'JOIN '
      '    matapelajaran ON jadwal.id_mapel = matapelajaran.id_mapel'
      'JOIN '
      '    guru ON jadwal.id_guru = guru.id_guru'
      'JOIN '
      '    ruangkelas ON jadwal.id_ruang = ruangKelas.id_ruang'
      'WHERE '
      '    siswa.id_siswa = :id_siswa;')
    Params = <
      item
        Name = 'id_siswa'
      end>
    Left = 104
    Top = 16
    ParamData = <
      item
        Name = 'id_siswa'
      end>
  end
  object siswa_ds: TDataSource
    DataSet = siswa_zq
    Left = 232
    Top = 80
  end
  object siswa_zq: TZQuery
    Connection = FLogin.con1
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 232
    Top = 16
  end
  object guru_ds: TDataSource
    DataSet = guru_zq
    Left = 168
    Top = 80
  end
  object guru_zq: TZQuery
    Connection = FLogin.con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM guru')
    Params = <>
    Left = 168
    Top = 16
  end
  object kls_ds: TDataSource
    DataSet = kls_zq
    Left = 296
    Top = 80
  end
  object kls_zq: TZQuery
    Connection = FLogin.con1
    SQL.Strings = (
      'SELECT * FROM kelas')
    Params = <>
    Left = 296
    Top = 16
  end
  object akun_ds: TDataSource
    DataSet = akun_zq
    Left = 360
    Top = 80
  end
  object akun_zq: TZQuery
    Connection = FLogin.con1
    SQL.Strings = (
      'SELECT * FROM akun')
    Params = <>
    Left = 360
    Top = 16
    object intfld_zqid_akun: TIntegerField
      FieldName = 'id_akun'
      Required = True
    end
    object stfld_zqusername: TStringField
      FieldName = 'username'
      Required = True
      Size = 50
    end
    object stfld_zqpassword: TStringField
      FieldName = 'password'
      Required = True
      Size = 255
    end
    object stfld_zqrole: TStringField
      FieldName = 'role'
      Required = True
      Size = 5
    end
  end
end
