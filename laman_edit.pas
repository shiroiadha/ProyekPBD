unit laman_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

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
    add_SG_lbl: TLabel;
    update_btn: TBitBtn;
    delete_btn: TBitBtn;
    tlpn_lbl: TLabel;
    tlpn_edt: TEdit;
    procedure cancel_btnClick(Sender: TObject);
    procedure add_btnClick(Sender: TObject);
    procedure update_btnClick(Sender: TObject);
    procedure delete_btnClick(Sender: TObject);
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
  if role_edt.Text = 'guru' then
  begin
    try
      // Ensure database connection is active
      if not FLogin.con1.Connected then
        FLogin.con1.Connected := True;

      // Ensure dataset is open
      if not FDM.guru_zq.Active then
        FDM.guru_zq.Open;

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
        ShowMessage('Terjadi kesalahan saat menambahkan data guru: ' + E.Message);
    end;
  end
  else if role_edt.Text = 'siswa' then
  begin
    try
      // Ensure dataset for siswa is open
      if not FDM.siswa_zq.Active then
        FDM.siswa_zq.Open;

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
        ShowMessage('Terjadi kesalahan saat menambahkan data siswa: ' + E.Message);
    end;
  end
  else
    ShowMessage('Role not recognized!');
end;

procedure TFEdit.update_btnClick(Sender: TObject);
begin
  if role_edt.Text = 'guru' then
  begin
    try
      // Ensure database connection is active
      if not FLogin.con1.Connected then
        FLogin.con1.Connected := True;

      // Ensure dataset is open
      if not FDM.guru_zq.Active then
        FDM.guru_zq.Open;

      // Add data to the dataset
      FDM.guru_zq.Edit;
      FDM.guru_zq.FieldByName('nama').AsString := nama_edt.Text;
      FDM.guru_zq.FieldByName('nip').AsString := ni_edt.Text;
      FDM.guru_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
      FDM.guru_zq.Post;
      Application.MessageBox('Data berhasil diupdate ;)', 'Information', MB_OK);
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data guru: ' + E.Message);
    end;
  end
  else if role_edt.Text = 'siswa' then
  begin
    try
      // Ensure dataset for siswa is open
      if not FDM.siswa_zq.Active then
        FDM.siswa_zq.Open;

      // Add data to siswa dataset
      FDM.siswa_zq.Edit;
      FDM.siswa_zq.FieldByName('nama').AsString := nama_edt.Text;
      FDM.siswa_zq.FieldByName('nis').AsString := ni_edt.Text;
      FDM.siswa_zq.FieldByName('telepon').AsString := tlpn_edt.Text;
      FDM.siswa_zq.Post;
      Application.MessageBox('Data berhasil diupdate ;)', 'Information', MB_OK);
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan saat menambahkan data siswa: ' + E.Message);
    end;
  end
  else
    ShowMessage('Role not recognized!');
end;

procedure TFEdit.delete_btnClick(Sender: TObject);
begin
  if role_edt.Text = 'guru' then
  begin
    if not FLogin.con1.Connected then
        FLogin.con1.Connected := True;

    // Ensure dataset is open
    if not FDM.guru_zq.Active then
      FDM.guru_zq.Open;

    FDM.guru_zq.Delete;
    Application.MessageBox('Data berhasil dihapus ;)', 'Information', MB_OK);
  end
  else if role_edt.Text = 'siswa' then
  begin
    // Ensure dataset for siswa is open
    if not FDM.siswa_zq.Active then
      FDM.siswa_zq.Open;

    FDM.siswa_zq.Delete;
    Application.MessageBox('Data berhasil dihapus ;)', 'Information', MB_OK);
  end
  else
    ShowMessage('Role not recognized!');
end;

end.
