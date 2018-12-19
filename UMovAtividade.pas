unit UMovAtividade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXLookup, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, Db, DBTables,
  ComCtrls, ToolEdit, RXDBCtrl, VerificaCPF,
  VerificaCGC, RXCtrls, Menus, Grids, DBGrids, CurrEdit, QuickRpt, RxDBComb,
  SMDBGrid, RzTabs, RzEdit, RzDBEdit;

type
  TfMovAtividade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    StaticText1: TStaticText;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DBMemo3: TDBMemo;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo2: TDBMemo;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBDateEdit1: TDBDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    DBText3: TDBText;
    Label16: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fMovAtividade: TfMovAtividade;

implementation

uses UDM1, UDM2, UConsMovAtividade, UMovAtividadeConclusao;
                      
{$R *.DFM}

procedure TfMovAtividade.Habilita;
begin
  Panel5.Enabled            := not(Panel5.Enabled);
  Bitbtn1.Enabled           := not(Bitbtn1.Enabled);
  Bitbtn2.Enabled           := not(Bitbtn2.Enabled);
  Bitbtn3.Enabled           := not(Bitbtn3.Enabled);
  Bitbtn4.Enabled           := not(Bitbtn4.Enabled);
  Bitbtn5.Enabled           := not(Bitbtn5.Enabled);
  Bitbtn6.Enabled           := not(Bitbtn6.Enabled);
  DBNavigator1.Enabled      := not(DBNavigator1.Enabled);
  DBMemo1.ReadOnly          := not(DBMemo1.ReadOnly);
  DBMemo2.ReadOnly          := not(DBMemo2.ReadOnly);
  DBMemo3.ReadOnly          := not(DBMemo3.ReadOnly);
  GroupBox1.Enabled         := not(GroupBox1.Enabled);
  if Tag = 1 then
    BitBtn1.Enabled := False;
end;

procedure TfMovAtividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tPessoa.Filtered := False;
  if Screen.FormCount < 3 then
    begin
      DM1.tMovAtividade.Close;
      DM1.tAtividade.Close;
      DM1.tPessoa.Close;
    end;
  Action := Cafree;
end;

procedure TfMovAtividade.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioInsMovAtividade.AsBoolean then
    begin
      DM1.tMovAtividade.Refresh;
      DM1.tMovAtividade.IndexFieldNames  := 'NumMov';
      DM2.tMovAtividade2.Refresh;
      DM2.tMovAtividade2.IndexFieldNames := 'NumMov';
      DM2.tMovAtividade2.Last;
      DM1.tMovAtividade.Insert;
      DM1.tMovAtividadeNumMov.AsInteger := DM2.tMovAtividade2NumMov.AsInteger + 1;
      DM1.tMovAtividade.Post;
      DM1.tMovAtividade.Edit;
      Habilita;
      RxDBLookupCombo1.SetFocus;
      RzPageControl1.ActivePageIndex := 0;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer inserção!');
end;

procedure TfMovAtividade.BitBtn2Click(Sender: TObject);
begin
  if DM1.tUsuarioAltMovAtividade.AsBoolean then
  begin
    DM1.tMovAtividade.IndexFieldNames := 'NumMov';
    DM1.tMovAtividade.Edit;
    BitBtn2.Tag := 1;
    Habilita;
    RxDBLookupCombo1.SetFocus;
    RzPageControl1.ActivePageIndex := 0;
  end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer alteração!');
end;

procedure TfMovAtividade.BitBtn3Click(Sender: TObject);
begin
  if DM1.tUsuarioExcMovAtividade.AsBoolean then
    begin
      if MessageDlg('Deseja realmente excluir o registro?',mtconfirmation,[mbok,mbno],0)=mrok then
      begin
        if DM1.tMovAtividadeDtConclusao.AsDateTime > 0 then
          Raise Exception.Create('Não foi possível excluir o registro porque ele já foi concluído, verifique!');

        DM1.tMovAtividade.Delete;
      end;
    end
  else
    ShowMessage('Usuário "' + DM1.tUsuarioUsuario.AsString + '" não autorizado a fazer exclusão!');
end;

procedure TfMovAtividade.BitBtn5Click(Sender: TObject);
begin
  if BitBtn2.Tag = 0 then
    DM1.tMovAtividade.Delete
  else
  if BitBtn2.Tag = 1 then
    DM1.tMovAtividade.Cancel;
  Habilita;
  BitBtn2.Tag := 0;
  if Tag = 0 then
    Close;
end;

procedure TfMovAtividade.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfMovAtividade.BitBtn6Click(Sender: TObject);
begin
  if DM1.tMovAtividadeCodAtividade.AsInteger <= 0 then
    Raise Exception.Create('Falta informar a atividade!');

  if DM1.tMovAtividadeCodCliente.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o cliente!');

  if DM1.tMovAtividadeCodAtendente.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o atendente!');

  if DM1.tMovAtividadeCodResponsavel.AsInteger <= 0 then
    Raise Exception.Create('Falta informar o responsável!');

  if DM1.tMovAtividadeDtPedido.AsDateTime <= 0 then
    Raise Exception.Create('Falta informar a data do pedido!');

  if DM1.tMovAtividadeDtPrazo.AsDateTime <= 0 then
    Raise Exception.Create('Falta informar a data do prazo!');


  if DM1.tMovAtividade.State in [dsInsert, dsEdit] then
    DM1.tMovAtividade.Post;

  Habilita;
  BitBtn2.Tag := 0;

end;

procedure TfMovAtividade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tMovAtividade.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o registro antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfMovAtividade.FormShow(Sender: TObject);
begin
  DM1.tMovAtividade.Open;
  DM1.tAtividade.Open;
  DM1.tPessoa.Open;
  DM1.tPessoa.IndexFieldNames := 'Nome';

  if Tag = 0 then
    BitBtn1Click(Sender)
  else
    begin
      if DM1.tMovAtividadeCodResponsavel.AsInteger = DM1.tUsuarioCodPessoa.AsInteger then
        begin
          DM1.tMovAtividade.Edit;
          DM1.tMovAtividadeLida.AsBoolean := True;
          DM1.tMovAtividade.Post;
        end;
      BitBtn1.Enabled := False;
    end;
end;

procedure TfMovAtividade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key = Vk_F2) and (DM1.tMovAtividade.State in [dsBrowse]) then
    begin
      fConsMovAtividade := TfConsMovAtividade.Create(Self);
      fConsMovAtividade.ShowModal;
    end;}

  if (Key = Vk_F3) and (DM1.tMovAtividade.State in [dsEdit]) then
    begin
      fMovAtividadeConclusao := TfMovAtividadeConclusao.Create(Self);
      fMovAtividadeConclusao.ShowModal;
    end;

end;

procedure TfMovAtividade.RxDBLookupCombo2Enter(Sender: TObject);
begin
  DM1.tPessoa.Filtered := False;
  DM1.tPessoa.Filter := 'Cliente = True';
  DM1.tPessoa.Filtered := True;
end;

end.
