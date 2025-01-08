unit laman_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ZAbstractConnection, ZConnection;

type
  TFLogin = class(TForm)
    user_lbl: TLabel;
    passwd_lbl: TLabel;
    user_edt: TEdit;
    passwd_edt: TEdit;
    login_btn: TBitBtn;
    cancel_btn: TBitBtn;
    login_lbl: TLabel;
    con1: TZConnection;
    procedure cancel_btnClick(Sender: TObject);
    procedure login_btnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;
  userid: Integer;
  passwd: string;

implementation

{$R *.dfm}

uses portal_utama, laman_siswa, laman_guru, laman_admin, datamodule;

procedure TFLogin.cancel_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFLogin.login_btnClick(Sender: TObject);
begin
  // Refresh Queries
  FDM.RefreshAllQueries(FDM);


  if not con1.Connected then
  begin
    con1.Connected := True;
  end;
  if FDM.akun_zq.Locate('username;password', VarArrayOf([user_edt.Text, passwd_edt.Text]), []) then
  begin
    userid := FDM.akun_zq['id_akun'];
    ShowMessage('Data ditemukan: ' + FDM.akun_zq.FieldByName('username').AsString);
  end
  else
    ShowMessage('Data tidak ditemukan. Username: ' + user_edt.Text + ', Password: ' + passwd_edt.Text);

  if FDM.akun_zq.FindField('role') <> nil then
  begin
    if FDM.akun_zq['role'] = 'guru' then
    begin
      FGuru.ShowModal;
    end
    else if FDM.akun_zq['role'] = 'siswa' then
    begin
      FSiswa.ShowModal;
    end
    else if FDM.akun_zq['role'] = 'admin' then
    begin
      FAdmin.ShowModal;
    end
  else
    MessageDlg('Login gagal karena username dan password salah', mtInformation, [mbOK], 0);
  end;
end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDM.ActiveTable(False);
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
  FDM.ActiveTable(True);
end;

end.
