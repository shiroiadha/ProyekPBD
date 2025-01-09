unit laman_database;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, SMDBCtrl, StdCtrls;

type
  TFDatabases = class(TForm)
    guru_smdbg: TSMDBGrid;
    siswa_smdbg: TSMDBGrid;
    kls_smdbg: TSMDBGrid;
    mapel_smdbg: TSMDBGrid;
    tahun_smdbg: TSMDBGrid;
    ruang_smdbg: TSMDBGrid;
    akun_smdbg: TSMDBGrid;
    guru_smdbnv: TSMDBNavigator;
    siswa_smdbnv: TSMDBNavigator;
    kls_smdbnv: TSMDBNavigator;
    ruang_smdbnv: TSMDBNavigator;
    tahun_smdbnv: TSMDBNavigator;
    mapel_smdbnv: TSMDBNavigator;
    akun_smdbnv: TSMDBNavigator;
    jdwl_smdbg: TSMDBGrid;
    jdwl_smdbnv: TSMDBNavigator;
    procedure guru_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure siswa_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure kls_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure mapel_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure tahun_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure ruang_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure akun_smdbnvClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDatabases: TFDatabases;

implementation

{$R *.dfm}

uses datamodule;

procedure TFDatabases.guru_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.guru_smdbfn.Execute;
    sbFilter: FDM.guru_smdbft.Execute;
    sbExport: FDM.guru_mxdbg.Select;
  end;
end;

procedure TFDatabases.siswa_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.siswa_smdbfn.Execute;
    sbFilter: FDM.siswa_smdbft.Execute;
    sbExport: FDM.siswa_mxdbg.Select;
  end;
end;

procedure TFDatabases.kls_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.kls_smdbfn.Execute;
    sbFilter: FDM.kls_smdbft.Execute;
    sbExport: FDM.kls_mxdbg.Select;
  end;
end;

procedure TFDatabases.mapel_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.mapel_smdbfn.Execute;
    sbFilter: FDM.mapel_smdbft.Execute;
    sbExport: FDM.mapel_mxdbg.Select;
  end;
end;

procedure TFDatabases.tahun_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.tahun_smdbfn.Execute;
    sbFilter: FDM.tahun_smdbft.Execute;
    sbExport: FDM.tahun_mxdbg.Select;
  end;
end;

procedure TFDatabases.ruang_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.ruang_smdbfn.Execute;
    sbFilter: FDM.ruang_smdbft.Execute;
    sbExport: FDM.ruang_mxdbg.Select;
  end;
end;

procedure TFDatabases.akun_smdbnvClick(Sender: TObject;
  Button: TSMNavigateBtn);
begin
  case Button of
    sbFind: FDM.akun_smdbfn.Execute;
    sbFilter: FDM.akun_smdbft.Execute;
    sbExport: FDM.akun_mxdbg.Select;
  end;
end;

procedure TFDatabases.FormShow(Sender: TObject);
begin
  FDM.ActiveTable(True);
end;

procedure TFDatabases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDM.ActiveTable(False);
end;

end.
