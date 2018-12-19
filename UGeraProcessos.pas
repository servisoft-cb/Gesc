unit UGeraProcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, RxLookup, Buttons, ExtCtrls,
  ComCtrls, Db;

type
  TfGeraProcessos = class(TForm)
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    Bevel1: TBevel;
    Label4: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Le_Pessoa;
    procedure Move_Dados(Codigo : Integer);
  public
    { Public declarations }
  end;

var
  fGeraProcessos: TfGeraProcessos;

implementation

uses UDM1, UMovProcesso, UPessoa, DateUtils;

{$R *.dfm}

procedure TfGeraProcessos.Move_Dados(Codigo : Integer);
begin
  DM1.tMovProcessoCodCliente.AsInteger := Codigo;
  DM1.tMovProcessoData.AsDateTime      := Date;
  DM1.tMovProcessoMesRef.AsInteger     := ComboBox1.ItemIndex + 1;
  DM1.tMovProcessoAnoRef.AsInteger     := CurrencyEdit1.AsInteger;
  Dm1.tMovProcesso.Post;
end;

procedure TfGeraProcessos.Le_Pessoa;
begin
  DM1.tPessoa.First;
  while not DM1.tPessoa.Eof do
    begin
      if dm1.tMovProcesso.Locate('CodCliente;AnoRef;MesRef',VarArrayOf([DM1.tPessoaCodigo.AsInteger,CurrencyEdit1.AsInteger,ComboBox1.ItemIndex + 1]),[locaseinsensitive]) then
        dm1.tMovProcesso.edit
      else
        begin
          fMovProcesso.Insere_Processo;
          Move_Dados(DM1.tPessoaCodigo.AsInteger);
        end;
      fMovProcesso.Le_PessoaSetor(RxDBLookupCombo2.Value);
      DM1.tPessoa.Next;
    end;
end;

procedure TfGeraProcessos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfGeraProcessos.SpeedButton2Click(Sender: TObject);
begin
  if DM1.tUsuarioPessoa.AsBoolean then
    begin
      fPessoa := TfPessoa.Create(Self);
      fPessoa.ShowModal;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a abrir este formulário!');
end;

procedure TfGeraProcessos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfGeraProcessos.BitBtn1Click(Sender: TObject);
begin
  if (CurrencyEdit1.AsInteger < 2005) and (ComboBox1.ItemIndex < 0) then
    Raise Exception.Create('Ano ou mês estão incorretos!');

  if (RxDBLookupCombo1.Text <> '') and
     (DM1.tPessoa.Locate('Codigo',RxDBLookupCombo1.KeyValue,[loCaseInsensitive])) then
    begin
      if dm1.tMovProcesso.Locate('CodCliente;MesRef;AnoRef',
         varArrayOf([RxDBLookupCombo1.KeyValue,ComboBox1.ItemIndex+1,CurrencyEdit1.Value]),
         ([loCaseInsensitive])) then
        dm1.tMovProcesso.Edit
      else
        fMovProcesso.Insere_Processo;
      Move_Dados(RxDBLookupCombo1.KeyValue);
      fMovProcesso.Le_PessoaSetor(RxDBLookupCombo2.Value);
    end
  else
  if RxDBLookupCombo1.Text = '' then
    Le_Pessoa;
  Close;
end;

procedure TfGeraProcessos.RxDBLookupCombo1Enter(Sender: TObject);
begin
  dm1.tPessoa.IndexFieldNames := 'NOME';                      
end;

procedure TfGeraProcessos.FormShow(Sender: TObject);
begin
  CurrencyEdit1.AsInteger := YearOf(Date);
end;

end.
