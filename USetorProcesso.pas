unit USetorProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxLookup, Buttons, DB, DBTables;

type
  TfSetorProcesso = class(TForm)
    RxDBLookupCombo18: TRxDBLookupCombo;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBLookupCombo18Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSetorProcesso: TfSetorProcesso;

implementation

uses UDM1;

{$R *.dfm}

procedure TfSetorProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSetorProcesso.RxDBLookupCombo18Enter(Sender: TObject);
begin
  DM1.tProcesso.IndexFieldNames := 'Nome';
end;

procedure TfSetorProcesso.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfSetorProcesso.BitBtn6Click(Sender: TObject);
begin
  if RxDBLookupCombo18.Text <> '' then
    begin
      if DM1.tSetorProcesso.Locate('CodProcesso',RxDBLookupCombo18.KeyValue,[loCaseInsensitive]) then
        ShowMessage('Processo já informado!')
      else
        begin
          DM1.tSetorProcesso.Insert;
          DM1.tSetorProcessoCodSetor.AsInteger    := DM1.tSetorCodigo.AsInteger;
          DM1.tSetorProcessoCodProcesso.AsInteger := RxDBLookupCombo18.KeyValue;
          DM1.tSetorProcesso.Post;
          DM1.tSetorProcesso.Refresh;
        end;
    end
  else
    ShowMessage('Falta informar o processo!');
end;

end.
