unit laman_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFAdmin = class(TForm)
    welcome_lbl: TLabel;
    logout_btn: TBitBtn;
    view_btn: TBitBtn;
    edt_btn: TBitBtn;
    procedure logout_btnClick(Sender: TObject);
    procedure view_btnClick(Sender: TObject);
    procedure edt_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAdmin: TFAdmin;

implementation

{$R *.dfm}

uses laman_login, laman_siswa, laman_guru, laman_edit;

procedure TFAdmin.logout_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFAdmin.view_btnClick(Sender: TObject);
begin
  FSiswa.Show;
  FGuru.Show;
end;

procedure TFAdmin.edt_btnClick(Sender: TObject);
begin
  FEdit.ShowModal;
end;

end.
