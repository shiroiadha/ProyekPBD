object FDM: TFDM
  OldCreateOrder = False
  Left = 341
  Top = 238
  Height = 304
  Width = 580
  object jadwalG_ds: TDataSource
    DataSet = jadwalG_zq
    Left = 104
    Top = 16
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
        DataType = ftUnknown
        Name = 'id_guru'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_guru'
        ParamType = ptUnknown
      end>
  end
  object jadwalS_ds: TDataSource
    DataSet = jadwalS_zq
    Left = 104
    Top = 72
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
      '    kelas ON siswa.kelas_id = kelas.id_kelas'
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
        DataType = ftUnknown
        Name = 'id_siswa'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_siswa'
        ParamType = ptUnknown
      end>
  end
  object siswa_ds: TDataSource
    DataSet = siswa_zq
    Left = 104
    Top = 128
  end
  object siswa_zq: TZQuery
    Connection = FLogin.con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM siswa')
    Params = <>
    Left = 40
    Top = 128
  end
  object guru_ds: TDataSource
    DataSet = guru_zq
    Left = 104
    Top = 184
  end
  object guru_zq: TZQuery
    Connection = FLogin.con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM guru')
    Params = <>
    Left = 40
    Top = 184
  end
end
