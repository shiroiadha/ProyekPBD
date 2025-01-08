unit laman_guru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFGuru = class(TForm)
    welcome_lbl: TLabel;
    jadwalG_smdbg: TSMDBGrid;
    logout_btn: TBitBtn;
    jadwalG_smdbnv: TSMDBNavigator;
    procedure logout_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGuru: TFGuru;

implementation

{$R *.dfm}

uses datamodule;

procedure TFGuru.logout_btnClick(Sender: TObject);
begin
  Close;
end;

end.
