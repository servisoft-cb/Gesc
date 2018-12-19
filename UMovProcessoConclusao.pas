unit UMovProcessoConclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, ToolEdit, Buttons,
  RXDBCtrl, DB;

type
  TfMovProcessoConclusao = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Label12: TLabel;
    DateEdit1: TDateEdit;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovProcessoConclusao: TfMovProcessoConclusao;

implementation

uses UDM1, UConsMovProcesso;

{$R *.dfm}

procedure TfMovProcessoConclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovProcessoConclusao.BitBtn2Click(Sender: TObject);
begin
  DM1.tMovProcessoItens.Cancel;
  Memo1.Clear;
  DateEdit1.Clear;
  Close;
end;

procedure TfMovProcessoConclusao.BitBtn1Click(Sender: TObject);
var
  iQtdDiasAtraso, vContador: Integer;
begin
 {if (DM1.tMovProcessoItensDtConclusao.AsDateTime > 0) and (DM1.tMovProcessoItensDtConclusao.AsDateTime < Date) then
    Raise Exception.Create('A data de conclusão não pode ser menor que a data atual do sistema.');

  if DM1.tMovProcessoItensDtConclusao.AsDateTime > 0 then
  begin
    DM1.tMovProcessoItensHrConclusao.AsDateTime := Now;
    iQtdDiasAtraso := Round(DM1.tMovProcessoItensDtConclusao.AsDateTime - DM1.tMovProcessoItensDtVencimento.AsDateTime);
    if iQtdDiasAtraso > 0 then
      DM1.tMovProcessoItensQtdDiasAtrazo.AsInteger := iQtdDiasAtraso
    else
      DM1.tMovProcessoItensQtdDiasAtrazo.AsInteger := 0;
  end
  else
  begin
    DM1.tMovProcessoItensDtConclusao.Clear;
    DM1.tMovProcessoItensObs.Clear;
    DM1.tMovProcessoItensHrConclusao.Clear;
    DM1.tMovProcessoItensQtdDiasAtrazo.Clear;
  end;

  if DM1.tMovProcessoItens.State in [dsInsert, dsEdit] then
    DM1.tMovProcessoItens.Post;

  Close;}
  vContador := 0;
  fConsMovProcesso.SMDBGrid1.DisableScroll;
  fConsMovProcesso.qConsulta.First;
  while not fConsMovProcesso.qConsulta.Eof do
    begin
      if fConsMovProcesso.SMDBGrid1.SelectedRows.CurrentRowSelected then
        begin
          if (DateEdit1.Date < Date) then
            Raise Exception.Create('A data de conclusão não pode ser menor que a data atual do sistema.');
          if DateEdit1.Date > 0 then
            begin
              if (DM1.tMovProcesso.Locate('NumMov',fConsMovProcesso.qConsultanummov.AsInteger, [loCaseInsensitive])) and
                 (DM1.tMovProcessoSetor.Locate('CodSetor',fConsMovProcesso.qConsultacodsetor.AsInteger, [loCaseInsensitive])) and
                 (DM1.tMovProcessoItens.Locate('CodProcesso',fConsMovProcesso.qConsultacodprocesso.AsInteger, [loCaseInsensitive])) then
                begin
                  DM1.tMovProcessoItens.Edit;
                  DM1.tMovProcessoItensDtConclusao.AsDateTime      := DateEdit1.Date;
                  DM1.tMovProcessoItensJustificativa.AsString      := Memo1.Text;
                  DM1.tMovProcessoItensHrConclusao.AsDateTime      := Now;
                  iQtdDiasAtraso := Round(DM1.tMovProcessoItensDtConclusao.AsDateTime - DM1.tMovProcessoItensDtVencimento.AsDateTime);
                  if iQtdDiasAtraso > 0 then
                    DM1.tMovProcessoItensQtdDiasAtrazo.AsInteger := iQtdDiasAtraso
                  else
                    DM1.tMovProcessoItensQtdDiasAtrazo.AsInteger := 0;
                  vContador := vContador + 1;
                end;
            if DM1.tMovProcessoItens.State in [dsInsert, dsEdit] then
              DM1.tMovProcessoItens.Post;
            end;
        end;
      fConsMovProcesso.qConsulta.Next;
    end;
  if vContador > 0 then
    ShowMessage(IntToStr(vContador) + ' Processo(s) concluído(s)!')
  else
    ShowMessage('Não foi selecionado processos para conclusão');
  fConsMovProcesso.SMDBGrid1.EnableScroll;
  fConsMovProcesso.BitBtn2.Click;
  Close;
end;

procedure TfMovProcessoConclusao.FormShow(Sender: TObject);
begin
  DM1.tMovProcessoItens.Edit;
  Memo1.Text := '';
  DateEdit1.Date := Date;
  Memo1.SetFocus;
end;

end.
