unit portal_utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFFP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    masuk_btn: TBitBtn;
    procedure masuk_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFP: TFFP;

implementation

{$R *.dfm}

uses laman_login;

procedure TFFP.masuk_btnClick(Sender: TObject);
begin
  FLogin.ShowModal;
end;

end.
