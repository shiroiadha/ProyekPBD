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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses portal_utama, laman_siswa, laman_guru, laman_admin;

procedure TFLogin.cancel_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFLogin.login_btnClick(Sender: TObject);
begin
  // FSiswa.Show;
  // FGuru.Show;
  FAdmin.Show;
end;

end.
