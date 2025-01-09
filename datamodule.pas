unit datamodule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  mxExport, SMDBFltr, SMDBFind;

type
  TFDM = class(TDataModule)
    jadwalG_ds: TDataSource;
    jadwalG_zq: TZQuery;
    jadwalS_ds: TDataSource;
    jadwalS_zq: TZQuery;
    siswa_ds: TDataSource;
    siswa_zq: TZQuery;
    guru_ds: TDataSource;
    guru_zq: TZQuery;
    kls_ds: TDataSource;
    kls_zq: TZQuery;
    akun_ds: TDataSource;
    akun_zq: TZQuery;
    intfld_zqid_akun: TIntegerField;
    stfld_zqusername: TStringField;
    stfld_zqpassword: TStringField;
    stfld_zqrole: TStringField;
    intgrfld_zqid_kelas: TIntegerField;
    strngfld_zqnama_kelas: TStringField;
    intgrfld_zqid_guru: TIntegerField;
    mapel_ds: TDataSource;
    mapel_zq: TZQuery;
    tahun_ds: TDataSource;
    tahun_zq: TZQuery;
    ruang_ds: TDataSource;
    ruang_zq: TZQuery;
    guru_smdbfn: TSMDBFindDialog;
    guru_smdbft: TSMDBFilterDialog;
    guru_mxdbg: TmxDBGridExport;
    siswa_smdbfn: TSMDBFindDialog;
    siswa_smdbft: TSMDBFilterDialog;
    siswa_mxdbg: TmxDBGridExport;
    kls_smdbfn: TSMDBFindDialog;
    kls_smdbft: TSMDBFilterDialog;
    kls_mxdbg: TmxDBGridExport;
    akun_smdbfn: TSMDBFindDialog;
    akun_smdbft: TSMDBFilterDialog;
    akun_mxdbg: TmxDBGridExport;
    mapel_smdbfn: TSMDBFindDialog;
    mapel_smdbft: TSMDBFilterDialog;
    mapel_mxdbg: TmxDBGridExport;
    tahun_smdbfn: TSMDBFindDialog;
    tahun_smdbft: TSMDBFilterDialog;
    tahun_mxdbg: TmxDBGridExport;
    ruang_smdbfn: TSMDBFindDialog;
    ruang_smdbft: TSMDBFilterDialog;
    ruang_mxdbg: TmxDBGridExport;
    jdwl_ds: TDataSource;
    jdwl_zq: TZQuery;
    jdwl_smdbfn: TSMDBFindDialog;
    jdwl_smdbft: TSMDBFilterDialog;
    jdwl_mxdbg: TmxDBGridExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActiveTable(b:Boolean);
    procedure RefreshAllQueries(DataModule: TDataModule);
  end;

var
  FDM: TFDM;

implementation

{$R *.dfm}

uses laman_login, laman_database;

procedure TFDM.RefreshAllQueries(DataModule: TDataModule);
var
  i: Integer;
begin
  for i := 0 to DataModule.ComponentCount - 1 do
  begin
    if DataModule.Components[i] is TZQuery then
    begin
      with TZQuery(DataModule.Components[i]) do
      begin
        Close; // Tutup query
        Open;  // Buka kembali query
        // Refresh;
      end;
    end;
  end;
end;

procedure TFDM.ActiveTable(b:Boolean);
begin
  jadwalG_zq.Active := b;
  jadwalS_zq.Active := b;
  guru_zq.Active := b;
  siswa_zq.Active := b;
  kls_zq.Active := b;
  mapel_zq.Active := b;
  tahun_zq.Active := b;
  ruang_zq.Active := b;
  akun_zq.Active := b;
  jdwl_zq.Active := b;
end;

end.
