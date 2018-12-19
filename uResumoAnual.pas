unit uResumoAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, db, rsDBUtils,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RxDBComb, ComCtrls, Mask, DBCtrls, Grids, DBGrids, SMDBGrid,
  RXSpin;

type
  TfResumoAnual = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResumoAnual: TfResumoAnual;

implementation

uses UDM1, uResumoAnualIndic;

{$R *.dfm}

procedure TfResumoAnual.BitBtn1Click(Sender: TObject);
begin
  if dm1.tResumoAnualAno.IsNull then
  begin
    ShowMessage('Ano deve ser preenchido!');
    DBEdit1.SetFocus;
    Exit;
  end;
  dm1.tResumoAnual.Post;
  Close;
end;

procedure TfResumoAnual.BitBtn2Click(Sender: TObject);
begin
  if Tag = 0 then
    dm1.tResumoAnual.Cancel
  else
    dm1.tResumoAnual.Delete;
  Close;
end;

procedure TfResumoAnual.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if DM1.tResumoAnual.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Você deve cancelar ou confirmar para fechar esta janela!');
    CanClose := False;
  end
end;

procedure TfResumoAnual.FormCreate(Sender: TObject);
begin
  oActiveTables.OpenTables(True,Self);
end;

procedure TfResumoAnual.BitBtn4Click(Sender: TObject);
begin
  if not dm1.tResumoAnualIndic.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      dm1.tResumoAnualIndic.Delete;
end;

procedure TfResumoAnual.BitBtn3Click(Sender: TObject);
begin
  dm1.tResumoAnualIndic.Insert;
  fResumoAnualIndic := TfResumoAnualIndic.Create(Self);
  fResumoAnualIndic.ShowModal;
  fResumoAnualIndic.Free;
end;

procedure TfResumoAnual.SMDBGrid1DblClick(Sender: TObject);
begin
  fResumoAnualIndic := TfResumoAnualIndic.Create(Self);
  fResumoAnualIndic.ShowModal;
  fResumoAnualIndic.Free;
end;

procedure TfResumoAnual.BitBtn5Click(Sender: TObject);
begin
    dm1.tIndicadores.First;
    while not dm1.tIndicadores.Eof do
    begin
      if dm1.tResumoAnualIndic.Locate('IndicadorId',dm1.tIndicadoresCodigo.AsInteger,[loCaseInsensitive]) then
        dm1.tResumoAnualIndic.Edit
      else
        dm1.tResumoAnualIndic.Insert;
      dm1.tResumoAnualIndicResumoAnualId.AsInteger := dm1.tResumoAnualId.AsInteger;
      dm1.tResumoAnualIndicIndicadorId.AsInteger   := dm1.tIndicadoresCodigo.AsInteger;
      try
        dm1.tResumoAnualIndic.Post;
      except
      end;
      dm1.tIndicadores.Next;
    end;
end;

end.
