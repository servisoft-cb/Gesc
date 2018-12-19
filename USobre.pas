unit USobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, RXCtrls, Db, DBTables, DBIProcs,
  DBFilter, Grids, DBGrids, MemTable, jpeg, Mask,
  ToolEdit, RXDBCtrl, Variants, ComCtrls;

type
  TfSobre = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    RxLabel1: TRxLabel;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSobre: TfSobre;

implementation

uses UEmpresa, UDM1, UDM2;

{$R *.DFM}

procedure TfSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSobre.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSobre.BitBtn2Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fEmpresa.ShowModal;
end;

procedure TfSobre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    begin
      BitBtn2.Enabled := not BitBtn2.Enabled;
      BitBtn3.Enabled := not BitBtn3.Enabled;
    end;
end;

procedure TfSobre.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Screen.Cursor   := crDefault;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
end;

end.
