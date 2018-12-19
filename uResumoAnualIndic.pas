unit uResumoAnualIndic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, db, rsDBUtils,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RxDBComb, ComCtrls, Mask, DBCtrls, Grids, DBGrids, SMDBGrid,
  RXSpin, RxLookup;

type
  TfResumoAnualIndic = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResumoAnualIndic: TfResumoAnualIndic;

implementation

uses UDM1;

{$R *.dfm}

procedure TfResumoAnualIndic.BitBtn1Click(Sender: TObject);
begin
  if dm1.tResumoAnualIndicIndicadorId.IsNull then
  begin
    ShowMessage('Indicador deve ser preenchido!');
    RxDBLookupCombo1.SetFocus;
    Exit;
  end;
  dm1.tResumoAnualIndic.Post;
  Close;
end;

procedure TfResumoAnualIndic.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if DM1.tResumoAnualIndic.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Você deve cancelar ou confirmar para fechar esta janela!');
    CanClose := False;
  end
end;

procedure TfResumoAnualIndic.FormCreate(Sender: TObject);
begin
  oActiveTables.OpenTables(True,Self);
end;

procedure TfResumoAnualIndic.BitBtn2Click(Sender: TObject);
begin
  dm1.tResumoAnualIndic.Cancel;
  Close;
end;

procedure TfResumoAnualIndic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oActiveTables.OpenTables(False,Self);
end;

end.
