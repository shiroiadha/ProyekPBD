unit laman_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, SMDBComb, ADODB;

type
  TFEdit = class(TForm)
    nama_lbl: TLabel;
    ni_lbl: TLabel;
    nama_edt: TEdit;
    ni_edt: TEdit;
    role_edt: TEdit;
    role_lbl: TLabel;
    add_btn: TBitBtn;
    cancel_btn: TBitBtn;
    crud_JDWL_lbl: TLabel;
    update_btn: TBitBtn;
    delete_btn: TBitBtn;
    tlpn_lbl: TLabel;
    tlpn_edt: TEdit;
    kls_lbl: TLabel;
    wali_lbl: TLabel;
    crud_KLS_lbl: TLabel;
    kls_edt: TEdit;
    wali_edt: TEdit;
    hari_lbl: TLabel;
    mulai_lbl: TLabel;
    selesai_lbl: TLabel;
    id_kls_lbl: TLabel;
    hari_edt: TEdit;
    mulai_edt: TEdit;
    selesai_edt: TEdit;
    id_mapel_lbl: TLabel;
    id_guru_lbl: TLabel;
    id_ruang_lbl: TLabel;
    id_tahun_lbl: TLabel;
    int_mapel_edt: TEdit;
    int_tahun_edt: TEdit;
    int_ruang_edt: TEdit;
    crud_SG_lbl: TLabel;
    int_guru_edt: TEdit;
    int_kls_edt: TEdit;
    procedure cancel_btnClick(Sender: TObject);
    procedure add_btnClick(Sender: TObject);
    procedure update_btnClick(Sender: TObject);
    procedure delete_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEdit: TFEdit;

implementation

{$R *.dfm}

uses laman_guru, laman_siswa, datamodule, laman_login;

procedure TFEdit.cancel_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFEdit.add_btnClick(Sender: TObject);
begin
  // Refresh Queries
  FDM.RefreshAllQueries(FDM);

  // Percabangan untuk CRUD siswa dan guru
  if role_edt.Text = 'guru' then
  begin
    try
      // Add data to the dataset
      FDM.guru_zq.Append;
      FDM.guru_zq.FieldByName('nama').AsString := nama_edt.Text;
      FDM.guru_zq.FieldByName('nip').AsString := ni_edt.Text;
      FDM.guru_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
      FDM.guru_zq.Post;
      nama_edt.Clear;
      ni_edt.Clear;
      tlpn_edt.Clear;
      role_edt.Clear;
      Application.MessageBox('Data berhasil ditambahkan ;)', 'Information', MB_OK);
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data: ' + E.Message);
    end;
  end
  else if role_edt.Text = 'siswa' then
  begin
    try
      // Add data to siswa dataset
      FDM.siswa_zq.Append;
      FDM.siswa_zq.FieldByName('nama').AsString := nama_edt.Text;
      FDM.siswa_zq.FieldByName('nis').AsString := ni_edt.Text;
      FDM.siswa_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
      FDM.siswa_zq.Post;
      nama_edt.Clear;
      ni_edt.Clear;
      tlpn_edt.Clear;
      role_edt.Clear;
      Application.MessageBox('Data berhasil ditambahkan ;)', 'Information', MB_OK);
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data: ' + E.Message);
    end;
  end
  else if role_edt.Text = '' then
  begin
    // Percabangan untuk CRUD kelas
    try
      FDM.kls_zq.Append;
      FDM.kls_zq.FieldByName('nama_kelas').AsString := kls_edt.Text;
      FDM.kls_zq.FieldByName('id_guru').AsString := wali_edt.Text;
      FDM.kls_zq.Post;
      kls_edt.Clear;
      wali_edt.Clear;

      Application.MessageBox('Data berhasil ditambahkan ;)', 'Information', MB_OK);
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data: ' + E.Message);
    end;
  end
  else
    ShowMessage('Role tidak dikenali! Harap isi dengan data yang sesuai :v');
end;

procedure TFEdit.update_btnClick(Sender: TObject);
begin
  // Refresh Queries
  FDM.RefreshAllQueries(FDM);

  if role_edt.Text = 'guru' then
  begin
    try
      // Locate data in the dataset
      if FDM.guru_zq.Locate('nip', VarArrayOf([ni_edt.Text]), []) then
      begin
        FDM.guru_zq.Edit;
        FDM.guru_zq.FieldByName('nama').AsString := nama_edt.Text;
        FDM.guru_zq.FieldByName('nip').AsString := ni_edt.Text;
        FDM.guru_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
        FDM.guru_zq.Post;

        Application.MessageBox('Data berhasil diupdate ;)', 'Information', MB_OK);
      end
      else
      begin
        Application.MessageBox('Data guru tidak ditemukan.', 'Warning', MB_OK);
      end;
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat mengupdate data: ' + E.Message);
    end;
  end
  else if role_edt.Text = 'siswa' then
  begin
    try
      // Locate data in the dataset
      if FDM.siswa_zq.Locate('nis', VarArrayOf([ni_edt.Text]), []) then
      begin
        FDM.siswa_zq.Edit;
        FDM.siswa_zq.FieldByName('nama').AsString := nama_edt.Text;
        FDM.siswa_zq.FieldByName('nis').AsString := ni_edt.Text;
        FDM.siswa_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
        FDM.siswa_zq.Post;

        Application.MessageBox('Data berhasil diupdate ;)', 'Information', MB_OK);
      end
      else
      begin
        Application.MessageBox('Data siswa tidak ditemukan.', 'Warning', MB_OK);
      end;
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat mengupdate data: ' + E.Message);
    end;
  end
  else if role_edt.Text = '' then
  begin
    // Percabangan untuk CRUD kelas
    try
      if FDM.kls_zq.Locate('nama_kelas', VarArrayOf([kls_edt.Text]), []) then
      begin
        FDM.kls_zq.Edit;
        FDM.kls_zq.FieldByName('nama_kelas').AsString := kls_edt.Text;
        FDM.kls_zq.FieldByName('id_guru').AsString := wali_edt.Text;
        FDM.kls_zq.Post;
        
        Application.MessageBox('Data berhasil diupdate ;)', 'Information', MB_OK);
      end
      else
      begin
        Application.MessageBox('Data siswa tidak ditemukan.', 'Warning', MB_OK);
      end;
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data: ' + E.Message);
    end;
  end
  else
    ShowMessage('Role tidak dikenali! Harap isi dengan data yang sesuai :v');
end;

procedure TFEdit.delete_btnClick(Sender: TObject);
begin
  // Refresh Queries
  FDM.RefreshAllQueries(FDM);

  if role_edt.Text = 'guru' then
  begin
    // Delete data to the dataset
    FDM.guru_zq.Delete;
    Application.MessageBox('Data berhasil dihapus ;)', 'Information', MB_OK);
  end
  else if role_edt.Text = 'siswa' then
  begin
    // Delete data to the dataset
    FDM.siswa_zq.Delete;
    Application.MessageBox('Data berhasil dihapus ;)', 'Information', MB_OK);
  end
  else if role_edt.Text = '' then
  begin
    if FDM.kls_zq.Locate('nama_kelas', VarArrayOf([kls_edt.Text]), []) then
    FDM.kls_zq.Delete;
    Application.MessageBox('Data berhasil dihapus ;)', 'Information', MB_OK);
  end
  else
    ShowMessage('Role tidak dikenali! Harap isi dengan data yang sesuai :v');
end;

procedure TFEdit.FormShow(Sender: TObject);
begin
  FDM.ActiveTable(True);
end;

procedure TFEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDM.ActiveTable(False);
end;

end.
