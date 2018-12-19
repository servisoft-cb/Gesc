unit UPessoaProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, RxLookup, Buttons, Grids, DBGrids,
  SMDBGrid, DB;

type
  TfPessoaProcesso = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CheckBox1: TCheckBox;
    BitBtn8: TBitBtn;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPessoaProcesso: TfPessoaProcesso;

implementation

uses UDM1;

{$R *.dfm}

procedure TfPessoaProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPessoaProcesso.BitBtn8Click(Sender: TObject);
begin
  if RxDBLookupCombo1.Text = '' then
    begin
      ShowMessage('Falta informar o processo!');
      exit;
    end;

  if DM1.tPessoaProcesso.Locate('CodProcesso',RxDBLookupCombo1.KeyValue,[loCaseInsensitive]) then
    begin
      ShowMessage('Processo já digitado!');
      exit;
    end;

  DM1.tPessoaProcesso.Insert;
  DM1.tPessoaProcessoCodPessoa.AsInteger   := DM1.tPessoaCodigo.AsInteger;
  DM1.tPessoaProcessoCodSetor.AsInteger    := DM1.tPessoaSetorCodSetor.AsInteger;
  DM1.tPessoaProcessoCodProcesso.AsInteger := RxDBLookupCombo1.KeyValue;
  DM1.tPessoaProcessoPossui.AsBoolean      := CheckBox1.Checked;
  DM1.tPessoaProcesso.Post;

  SpeedButton7Click(Sender);

  RxDBLookupCombo1.SetFocus;
end;

procedure TfPessoaProcesso.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPessoaProcesso.SpeedButton7Click(Sender: TObject);
begin
  RxDBLookupCombo1.ClearValue;
end;

procedure TfPessoaProcesso.SpeedButton9Click(Sender: TObject);
begin
  if (DM1.tPessoaProcessoCodProcesso.AsInteger > 0) and
     (MessageDlg('Deseja excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok) then
    DM1.tPessoaProcesso.Delete;
end;

procedure TfPessoaProcesso.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM1.tProcesso.IndexFieldNames := 'Nome';
end;

end.
