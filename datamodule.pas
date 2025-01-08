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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDM: TFDM;

implementation

{$R *.dfm}

uses laman_login;

end.
