program portal_sekolah;

uses
  Forms,
  portal_utama in 'portal_utama.pas' {FFP},
  laman_login in 'laman_login.pas' {FLogin},
  laman_siswa in 'laman_siswa.pas' {FSiswa},
  laman_guru in 'laman_guru.pas' {FGuru},
  laman_admin in 'laman_admin.pas' {FAdmin},
  laman_edit in 'laman_edit.pas' {FEdit},
  datamodule in 'datamodule.pas' {FDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFFP, FFP);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFSiswa, FSiswa);
  Application.CreateForm(TFGuru, FGuru);
  Application.CreateForm(TFAdmin, FAdmin);
  Application.CreateForm(TFEdit, FEdit);
  Application.CreateForm(TFDM, FDM);
  Application.Run;
end.
