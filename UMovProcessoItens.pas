unit UMovProcessoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Buttons, DB, DBTables, Mask, ToolEdit,
  ExtCtrls, Grids, DBGrids, SMDBGrid;

type
  TfMovProcessoItens = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    RxDBLookupCombo18: TRxDBLookupCombo;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    BitBtn3: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo18Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovProcessoItens: TfMovProcessoItens;

implementation

uses UDM1, UMovProcesso, DateUtils, USetor, UProcesso;

{$R *.dfm}

procedure TfMovProcessoItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovProcessoItens.RxDBLookupCombo18Enter(Sender: TObject);
begin
  DM1.tProcesso.IndexFieldNames := 'Nome';
end;

procedure TfMovProcessoItens.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovProcessoItens.BitBtn6Click(Sender: TObject);
var
  vDia, vDiaMes : Integer;
begin
  if RxDBLookupCombo18.Text <> '' then
    begin
      if DM1.tMovProcessoItens.Locate('CodProcesso',RxDBLookupCombo18.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Processo já informado!')
      else
        begin
          DM1.tMovProcessoItens.Insert;
          DM1.tMovProcessoItensNumMov.AsInteger      := DM1.tMovProcessoNumMov.AsInteger;
          DM1.tMovProcessoItensCodSetor.AsInteger    := DM1.tMovProcessoSetorCodSetor.AsInteger;
          DM1.tMovProcessoItensCodProcesso.AsInteger := RxDBLookupCombo18.KeyValue;
          vDiaMes := DaysInAMonth(DM1.tMovProcessoAnoRef.AsInteger,DM1.tMovProcessoMesRef.AsInteger);
          if vDia <= 0 then
            vDia := 01;
          if vDia > vDiaMes then
            vDia := vDiaMes;
          DM1.tMovProcessoItensDtVencimento.AsDateTime := EncodeDate(DM1.tMovProcessoAnoRef.AsInteger,DM1.tMovProcessoMesRef.AsInteger,vDia);
          DM1.tMovProcessoItensDtConclusao.Clear;
          DM1.tMovProcessoItens.Post;
          DM1.tMovProcessoItens.Refresh;
          RxDBLookupCombo18.SetFocus;
          RxDBLookupCombo18.ClearValue;
        end;
    end
  else
    ShowMessage('Falta informar o processo!');
end;

procedure TfMovProcessoItens.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tSetor.IndexFieldNames := 'Nome';
end;

procedure TfMovProcessoItens.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    begin
      if not DM1.tMovProcessoSetor.Locate('CodSetor',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
        fMovProcesso.Grava_Setores(RxDBLookupCombo1.KeyValue)
      else
      if MessageDlg('Setor já informado, continua gravação?',mtconfirmation,[mbok,mbno],0)=mrok then
        fMovProcesso.Grava_Setores(RxDBLookupCombo1.KeyValue);
    end
  else
    ShowMessage('Falta informar o setor!');
end;

procedure TfMovProcessoItens.FormShow(Sender: TObject);
begin
  if not Panel1.Enabled then
    RxDBLookupCombo1.KeyValue := DM1.tMovProcessoSetorCodSetor.AsInteger;
end;

procedure TfMovProcessoItens.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Excluir o processo selecionado?',mtconfirmation,[mbok,mbno],0)=mrok then
  begin
    if DM1.tMovProcessoItensDtConclusao.AsDateTime > 0 then
      Raise Exception.Create('Este registro não pode ser excluído porque possui data de conclusão.');
    DM1.tMovProcessoItens.Delete;
  end;
end;

procedure TfMovProcessoItens.SpeedButton2Click(Sender: TObject);
begin
   if DM1.tUsuarioSetor.AsBoolean then
    begin
      fSetor := TfSetor.Create(Self);
      fSetor.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfMovProcessoItens.SpeedButton1Click(Sender: TObject);
begin
   if DM1.tUsuarioProcesso.AsBoolean then
    begin
      fProcesso := TfProcesso.Create(Self);
      fProcesso.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

end.
