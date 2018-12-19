unit UConsFato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, CurrEdit, DBClient, ExtCtrls, DBFilter, DBCtrls,
  RzTabs;

type
  TfConsFato = class(TForm)
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Bevel2: TBevel;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsFato: TfConsFato;

implementation

uses UDM1, URelMovObjetivoAcao, DateUtils, URelMovObjetivoAcao2, UDM2,
  UFato;

{$R *.dfm}


procedure TfConsFato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConsFato.BitBtn1Click(Sender: TObject);
begin
  fFato.qConsulta.Close;
  Close;
end;

procedure TfConsFato.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsFato.RxDBLookupCombo3Enter(Sender: TObject);
begin
  DM1.tPessoa.IndexFieldNames := 'Nome';
end;

procedure TfConsFato.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM2.tPessoa2.IndexFieldNames := 'Nome';
end;

procedure TfConsFato.BitBtn2Click(Sender: TObject);
var
  vCod1, vCod2 : Integer;
begin
  vCod1 := 0;
  vCod2 := 0;
  if RxDBLookupCombo3.Text <> '' then
    vCod1 := RxDBLookupCombo3.KeyValue;
  if RxDBLookupCombo1.Text <> '' then
    vCod2 := RxDBLookupCombo1.KeyValue;
  fFato.Monta_SQL(0,vCod1,vCod2,CurrencyEdit1.AsInteger,CurrencyEdit2.AsInteger,DateEdit5.Date,DateEdit6.Date);
end;

end.
