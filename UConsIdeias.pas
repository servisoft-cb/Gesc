unit UConsIdeias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, DBTables, CurrEdit, DBClient, ExtCtrls, DBFilter, DBCtrls,
  RzTabs;

type
  TfConsIdeias = class(TForm)
    SMDBGrid1: TSMDBGrid;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    DBMemo3: TDBMemo;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo4: TDBMemo;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    Label7: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsIdeias: TfConsIdeias;

implementation

uses UDM1, DateUtils, UDM2, UIdeias;

{$R *.dfm}


procedure TfConsIdeias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm2.tPessoa2.Filtered := False;
  dm2.tPessoa2.Filter   := '';
  Action := Cafree;
end;

procedure TfConsIdeias.BitBtn1Click(Sender: TObject);
begin
  fIdeias.qConsulta.Close;
  Close;
end;

procedure TfConsIdeias.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsIdeias.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM2.tPessoa2.IndexFieldNames := 'Nome';
  dm2.tPessoa2.Filtered := False;
  dm2.tPessoa2.Filter   := 'FUNCIONARIO = TRUE';
  dm2.tPessoa2.Filtered := True;
end;

procedure TfConsIdeias.BitBtn2Click(Sender: TObject);
var
  vResp : Integer;
  vAprovado : String;

begin
  vResp := 0;
  if RxDBLookupCombo1.Text <> '' then
    vResp := RxDBLookupCombo1.KeyValue;
  case ComboBox1.ItemIndex of
    0 : vAprovado := 'S';//Aprovado
    1 : vAprovado := 'N';//Nao
    2 : vAprovado := 'P';//Pendente
    3 : vAprovado := 'A'; //Ambos
  end;
  fIdeias.Monta_SQL(0,vResp,DateEdit5.Date,DateEdit6.Date,'S');
  Label9.Caption :=IntToStr(fIdeias.qConsulta.RecordCount);
  fIdeias.Monta_SQL(0,vResp,DateEdit5.Date,DateEdit6.Date,'N');
  Label11.Caption :=IntToStr(fIdeias.qConsulta.RecordCount);
  fIdeias.Monta_SQL(0,vResp,DateEdit5.Date,DateEdit6.Date,vAprovado);
  Label4.Caption := IntToStr(fIdeias.qConsulta.RecordCount);
end;

procedure TfConsIdeias.FormShow(Sender: TObject);
begin
  Top   := 0;
  Left  := 0;
  Width := Screen.Width;
  Height := Screen.Height - 35;
end;

end.
