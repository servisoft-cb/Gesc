unit uResumoAnualC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, ExtCtrls, RxLookup;

type
  TfResumoAnualC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResumoAnualC: TfResumoAnualC;

implementation

uses UDM1, uResumoAnual, uRelResumoAnual, UGraficoIndicadores;

{$R *.dfm}

procedure TfResumoAnualC.FormCreate(Sender: TObject);
begin
  oActiveTables.OpenTables(True,Self);
  oActiveTables.ActiveDataSet(True,DM1.tResumoAnualIndic,Name);
end;

procedure TfResumoAnualC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oActiveTables.OpenTables(False,Self);
end;

procedure TfResumoAnualC.BitBtn3Click(Sender: TObject);
begin
  dm1.tResumoAnual.Insert;
  fResumoAnual := TfResumoAnual.Create(Self);
  fResumoAnual.Tag := 1;
  fResumoAnual.ShowModal;
  fResumoAnual.Free;
end;

procedure TfResumoAnualC.BitBtn4Click(Sender: TObject);
begin
  if not dm1.tResumoAnual.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      dm1.tResumoAnual.Delete;
end;

procedure TfResumoAnualC.SMDBGrid1DblClick(Sender: TObject);
begin
  dm1.tResumoAnual.Edit;
  fResumoAnual := TfResumoAnual.Create(Self);
  fResumoAnual.ShowModal;
  fResumoAnual.Free;
end;

procedure TfResumoAnualC.BitBtn1Click(Sender: TObject);
begin
  fRelResumoAnual := TfRelResumoAnual.Create(Self);
  fRelResumoAnual.RLReport1.Preview;
  fRelResumoAnual.Free;
end;

procedure TfResumoAnualC.BitBtn2Click(Sender: TObject);
begin
  fGraficoIndicadores:= TfGraficoIndicadores.Create(Self);
  fGraficoIndicadores.ShowModal;
end;

end.
