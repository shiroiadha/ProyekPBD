unit datamodule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

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

uses laman_login;

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
  akun_zq.Active := b;
end;

end.
