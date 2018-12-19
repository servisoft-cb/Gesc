unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls, ComCtrls, DB, DBTables,
  RxLookup, DBFilter;

type
  TfUsuarios = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    Panel4: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBCheckBox27: TDBCheckBox;
    BitBtn7: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    BitBtn8: TBitBtn;
    DBCheckBox3: TDBCheckBox;
    BitBtn9: TBitBtn;
    DBCheckBox4: TDBCheckBox;
    BitBtn10: TBitBtn;
    DBCheckBox5: TDBCheckBox;
    BitBtn11: TBitBtn;
    DBCheckBox6: TDBCheckBox;
    BitBtn12: TBitBtn;
    DBCheckBox7: TDBCheckBox;
    BitBtn13: TBitBtn;
    DBCheckBox8: TDBCheckBox;
    BitBtn14: TBitBtn;
    DBCheckBox9: TDBCheckBox;
    BitBtn15: TBitBtn;
    DBCheckBox10: TDBCheckBox;
    BitBtn16: TBitBtn;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    RxDBFilter1: TRxDBFilter;
    DBCheckBox11: TDBCheckBox;
    BitBtn17: TBitBtn;
    DBCheckBox12: TDBCheckBox;
    BitBtn18: TBitBtn;
    DBCheckBox13: TDBCheckBox;
    BitBtn19: TBitBtn;
    DBCheckBox14: TDBCheckBox;
    BitBtn20: TBitBtn;
    DBCheckBox15: TDBCheckBox;
    BitBtn21: TBitBtn;
    DBCheckBox16: TDBCheckBox;
    BitBtn22: TBitBtn;
    DBCheckBox17: TDBCheckBox;
    BitBtn23: TBitBtn;
    DBCheckBox18: TDBCheckBox;
    BitBtn24: TBitBtn;
    DBCheckBox19: TDBCheckBox;
    BitBtn25: TBitBtn;
    DBCheckBox20: TDBCheckBox;
    BitBtn26: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBCheckBox27Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBCheckBox8Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure DBCheckBox10Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBCheckBox12Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure DBCheckBox13Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure DBCheckBox14Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure DBCheckBox15Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure DBCheckBox16Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure DBCheckBox17Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure DBCheckBox18Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure DBCheckBox19Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure DBCheckBox20Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Editar_Tabelas(Campo : String; Valor : Boolean);
    procedure Chama_Permissoes(Campo : String; Selecionado : Boolean);
  public
    { Public declarations }
  end;

var
  fUsuarios: TfUsuarios;
  vUsuario: String;
  
implementation

uses UDM1, UPermissoes;

{$R *.DFM}

procedure TfUsuarios.Chama_Permissoes(Campo : String; Selecionado : Boolean);
begin

  if Selecionado then
    begin
      fPermissoes := TfPermissoes.Create(Self);
      fPermissoes.DBCheckBox1.DataField := Campo;
      fPermissoes.DBCheckBox2.DataField := Campo;
      fPermissoes.DBCheckBox3.DataField := Campo;
      fPermissoes.ShowModal;
    end
  else
    ShowMessage('O item deve estar selecionado para abrir permissões!');
end;

procedure TfUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  DM1.tPessoa.Close;
  DM1.tUsuario.FindKey([vUsuario]);
  Action := Cafree;
end;

procedure TfUsuarios.Habilita;
begin
  DBNavigator1.Enabled := not(DBNavigator1.Enabled);
  BitBtn1.Enabled      := not(BitBtn1.Enabled);
  BitBtn2.Enabled      := not(BitBtn2.Enabled);
  BitBtn3.Enabled      := not(BitBtn3.Enabled);
  BitBtn4.Enabled      := not(BitBtn4.Enabled);
  BitBtn5.Enabled      := not(BitBtn5.Enabled);
  BitBtn6.Enabled      := not(BitBtn6.Enabled);
  Panel1.Enabled       := not(Panel1.Enabled);
  Panel9.Enabled       := not(Panel9.Enabled);
end;

procedure TfUsuarios.Editar_Tabelas(Campo : String; Valor : Boolean);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      DM1.tUsuarioAlt.Edit;
      DM1.tUsuarioExc.Edit;
      DM1.tUsuarioIns.Edit;
      DM1.tUsuarioIns.FieldByName(Campo).AsBoolean := Valor;
      DM1.tUsuarioExc.FieldByName(Campo).AsBoolean := Valor;
      DM1.tUsuarioAlt.FieldByName(Campo).AsBoolean := Valor;
    end;
end;

procedure TfUsuarios.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DM1.tUsuario.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar o usuário antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfUsuarios.BitBtn2Click(Sender: TObject);
begin
  Habilita;
  DM1.tUsuario.Insert;
  DBEdit1.Enabled := True;
  DBEdit1.SetFocus;
end;

procedure TfUsuarios.BitBtn3Click(Sender: TObject);
begin
  DM1.tUsuario.Edit;
  Habilita;
  DBEdit1.Enabled := False;
  DBEdit2.SetFocus;
end;

procedure TfUsuarios.BitBtn5Click(Sender: TObject);
begin
  DM1.tUsuario.Cancel;
  DM1.tUsuarioAlt.Cancel;
  DM1.tUsuarioExc.Cancel;
  DM1.tUsuarioIns.Cancel;
  Habilita;
end;

procedure TfUsuarios.BitBtn1Click(Sender: TObject);
begin
  if DM1.tUsuarioAlt.State in [dsEdit,dsInsert] then
    DM1.tUsuarioAlt.Post;
  if DM1.tUsuarioExc.State in [dsEdit,dsInsert] then
    DM1.tUsuarioExc.Post;
  if DM1.tUsuarioIns.State in [dsEdit,dsInsert] then
    DM1.tUsuarioIns.Post;
  DM1.tUsuario.Post;
  Habilita;
end;

procedure TfUsuarios.BitBtn4Click(Sender: TObject);
begin
 if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
    [mbOk,mbNo],0) = mrOk then
   begin
     DM1.tUsuarioAlt.Delete;
     DM1.tUsuarioExc.Delete;
     DM1.tUsuarioIns.Delete;
     DM1.tUsuario.Delete;
   end;
end;

procedure TfUsuarios.FormShow(Sender: TObject);
begin
  DM1.tPessoa.Open;
  RxDBFilter1.Active := True;
  vUsuario := DM1.tUsuarioUsuario.AsString;
end;

procedure TfUsuarios.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    if DBEdit2.PasswordChar = #0 then
      DBEdit2.PasswordChar := '*'
    else
      DBEdit2.PasswordChar := #0;
end;

procedure TfUsuarios.BitBtn7Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox27.DataField,DBCheckBox27.Checked)
end;

procedure TfUsuarios.DBCheckBox27Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox27.DataField,DBCheckBox27.Checked);
end;

procedure TfUsuarios.DBCheckBox2Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox2.DataField,DBCheckBox2.Checked);
end;

procedure TfUsuarios.BitBtn8Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox2.DataField,DBCheckBox2.Checked);
end;

procedure TfUsuarios.DBCheckBox3Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox3.DataField,DBCheckBox3.Checked);
end;

procedure TfUsuarios.BitBtn9Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox3.DataField,DBCheckBox3.Checked);
end;

procedure TfUsuarios.DBCheckBox4Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox4.DataField,DBCheckBox4.Checked);
end;

procedure TfUsuarios.BitBtn10Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox4.DataField,DBCheckBox4.Checked);
end;

procedure TfUsuarios.DBCheckBox5Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox5.DataField,DBCheckBox5.Checked);
end;

procedure TfUsuarios.BitBtn11Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox5.DataField,DBCheckBox5.Checked);
end;

procedure TfUsuarios.DBCheckBox6Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox6.DataField,DBCheckBox6.Checked);
end;

procedure TfUsuarios.BitBtn12Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox6.DataField,DBCheckBox6.Checked);
end;

procedure TfUsuarios.DBCheckBox7Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox7.DataField,DBCheckBox7.Checked);
end;

procedure TfUsuarios.BitBtn13Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox7.DataField,DBCheckBox7.Checked);
end;

procedure TfUsuarios.DBCheckBox8Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox8.DataField,DBCheckBox8.Checked);
end;

procedure TfUsuarios.BitBtn14Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox8.DataField,DBCheckBox8.Checked);
end;

procedure TfUsuarios.DBCheckBox9Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox9.DataField,DBCheckBox9.Checked);
end;

procedure TfUsuarios.DBCheckBox10Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox10.DataField,DBCheckBox10.Checked);
end;

procedure TfUsuarios.BitBtn15Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox9.DataField,DBCheckBox9.Checked);
end;

procedure TfUsuarios.BitBtn16Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox10.DataField,DBCheckBox10.Checked);
end;

procedure TfUsuarios.DBCheckBox12Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox12.DataField,DBCheckBox12.Checked);
end;

procedure TfUsuarios.BitBtn18Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox12.DataField,DBCheckBox12.Checked);
end;

procedure TfUsuarios.DBCheckBox13Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox13.DataField,DBCheckBox13.Checked);
end;

procedure TfUsuarios.BitBtn19Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox13.DataField,DBCheckBox13.Checked);
end;

procedure TfUsuarios.DBCheckBox14Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox14.DataField,DBCheckBox14.Checked);
end;

procedure TfUsuarios.BitBtn20Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox14.DataField,DBCheckBox14.Checked);
end;

procedure TfUsuarios.DBCheckBox15Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox15.DataField,DBCheckBox15.Checked);
end;

procedure TfUsuarios.BitBtn21Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox15.DataField,DBCheckBox15.Checked);
end;

procedure TfUsuarios.DBCheckBox16Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox16.DataField,DBCheckBox16.Checked);
end;

procedure TfUsuarios.BitBtn22Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox16.DataField,DBCheckBox16.Checked);
end;

procedure TfUsuarios.DBCheckBox17Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox17.DataField,DBCheckBox17.Checked);
end;

procedure TfUsuarios.BitBtn23Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox17.DataField,DBCheckBox17.Checked);
end;

procedure TfUsuarios.DBCheckBox18Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox18.DataField,DBCheckBox18.Checked);
end;

procedure TfUsuarios.BitBtn24Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox18.DataField,DBCheckBox18.Checked);
end;

procedure TfUsuarios.DBCheckBox19Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox19.DataField,DBCheckBox19.Checked);
end;

procedure TfUsuarios.BitBtn25Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox19.DataField,DBCheckBox19.Checked);
end;

procedure TfUsuarios.DBCheckBox20Click(Sender: TObject);
begin
  Editar_Tabelas(DBCheckBox20.DataField,DBCheckBox20.Checked);
end;

procedure TfUsuarios.BitBtn26Click(Sender: TObject);
begin
  Chama_Permissoes(DBCheckBox20.DataField,DBCheckBox20.Checked);
end;

end.


