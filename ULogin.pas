unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Buttons;

type
  TfLogin = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

uses UDM1;

{$R *.DFM}

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DM1.tUsuario.SetKey;
  DM1.tUsuarioUsuario.AsString := Edit1.Text;
  if DM1.tUsuario.GotoKey then
    begin
      if DM1.tUsuarioSenha.AsString = Edit2.Text then
        begin
          DM1.Mostra_Menu;
          fLogin.Close;
          CanClose := True;
        end
      else
        begin
          ShowMessage('Senha incorreta!');
          Edit2.SetFocus;
          Edit2.SelectAll;
          CanClose := False;
        end;
    end
  else
    begin
       ShowMessage('Usuário não autorizado!');
       Edit1.SetFocus;
       Edit1.SelectAll;
       CanClose := False;
    end;
end;

procedure TfLogin.BitBtn1Click(Sender: TObject);
begin
 if Edit1.Text <> '' then
   begin
     DM1.tUsuario.SetKey;
     DM1.tUsuarioUsuario.AsString := Edit1.Text;
     if DM1.tUsuario.GotoKey then
       begin
         if DM1.tUsuarioSenha.AsString = Edit2.Text then
           begin
             DM1.Mostra_Menu;
             fLogin.Close;
           end
         else
           begin
             ShowMessage('Senha incorreta!');
             Edit2.SetFocus;
             Edit2.SelectAll;
           end;
       end
     else
       begin
         ShowMessage('Usuário não autorizado!');
         Edit1.SetFocus;
         Edit1.SelectAll;
       end;
   end;
end;

procedure TfLogin.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1.Click;
end;

procedure TfLogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit2.SetFocus;
end;

end.
