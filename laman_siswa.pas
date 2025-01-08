unit laman_siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFSiswa = class(TForm)
    jadwalS_smdbg: TSMDBGrid;
    welcome_lbl: TLabel;
    logout_btn: TBitBtn;
    jadwalS_smdbnv: TSMDBNavigator;
    procedure logout_btnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiswa: TFSiswa;

implementation

{$R *.dfm}

uses datamodule;

procedure TFSiswa.logout_btnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSiswa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDM.ActiveTable(False);
end;

procedure TFSiswa.FormShow(Sender: TObject);
begin
  FDM.ActiveTable(True);
end;

end.
