unit UAcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, StdCtrls, Buttons, jpeg;

type
  TfAcesso = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Verifica_Data;
  end;

var
  fAcesso: TfAcesso;
  Auto : String[15];

implementation

uses UDM1, UMenuP, USenha;

{$R *.DFM}

procedure TfAcesso.Verifica_Data;
var
  Digitos : Array[1..9] of integer;
  MesInicial, Ano, i : integer;
  Soma : string[15];
  Info : String[7];
  Data : TDateTime;
  vdia,vmes,vano : word;
  vAno2,vMes2 : String;
begin
  Data       := (Date - 10);
  DecodeDate(Data,vano,vmes,vdia);
  vAno2      := IntToStr(vAno);
  vMes2      := IntToStr(vMes);
  if Length(vMes2) = 1 then
    vMes2 := '0' + vMes2;
  Info       := FormatFloat('000',DM1.tEmpresaCodigo.AsInteger);
  Info       := Info +  vMes2 + Copy(vAno2,3,2);
  Auto       := '0';
  Soma       := '0';
  MesInicial := vMes;
  Ano        := StrToInt(Copy(Info,6,2));
  Digitos[1] := StrToInt(Copy(Info,1,1));
  Digitos[2] := StrToInt(Copy(Info,2,1));
  Digitos[3] := StrToInt(Copy(Info,3,1));
  Digitos[4] := StrToInt(Copy(Info,4,1));
  Digitos[5] := StrToInt(Copy(Info,5,1));
  Digitos[6] := StrToInt(Copy(Info,4,1));
  Digitos[7] := StrToInt(Copy(Info,5,1));
  Digitos[8] := StrToInt(Copy(Info,6,1));
  Digitos[9] := StrToInt(Copy(Info,7,1));
  for i := 1 to 9 do
    begin
      Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) + (Digitos[i] * 4))),10,6);
      Soma := Copy(FormatFloat('000000000000000',StrToInt(Soma) + (Digitos[i] * i)),10,6);
    end;
  Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * StrToInt(Soma))),10,6);
  if Ano > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Ano)),10,6);
  if Digitos[7] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[7])),10,6);
  Auto := IntToStr(StrToInt(Auto) * MesInicial);
  if Digitos[9] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[9])),10,6);
  if Length(Auto) > 6 then
    Delete(Auto,1,Length(Auto)-6);
  if DM1.tEmpresaAutorizacao.AsString <> Auto then
    begin
      ShowMessage('Digite a sua autorização no campo "Senha"!');
      fSenha := TfSenha.Create(Self);
      fSenha.ShowModal;
    end;


  {Data       := (Date - 10);
  Info       := FormatFloat('000',DM1.tEmpresaCodigo.AsInteger);
  Info       := Info + Copy(DateToStr(Data),4,2) + Copy(DateToStr(Data),9,2);
  Auto       := '0';
  Soma       := '0';
  MesInicial := StrToInt(Copy(Info,4,2));
  Ano        := StrToInt(Copy(Info,6,2));
  Digitos[1] := StrToInt(Copy(Info,1,1));
  Digitos[2] := StrToInt(Copy(Info,2,1));
  Digitos[3] := StrToInt(Copy(Info,3,1));
  Digitos[4] := StrToInt(Copy(Info,4,1));
  Digitos[5] := StrToInt(Copy(Info,5,1));
  Digitos[6] := StrToInt(Copy(Info,4,1));
  Digitos[7] := StrToInt(Copy(Info,5,1));
  Digitos[8] := StrToInt(Copy(Info,6,1));
  Digitos[9] := StrToInt(Copy(Info,7,1));
  for i := 1 to 9 do
    begin
      Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) + (Digitos[i] * 4))),10,6);
      Soma := Copy(FormatFloat('000000000000000',StrToInt(Soma) + (Digitos[i] * i)),10,6);
    end;
  Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * StrToInt(Soma))),10,6);
  if Ano > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Ano)),10,6);
  if Digitos[7] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[7])),10,6);
  Auto := IntToStr(StrToInt(Auto) * MesInicial);
  if Digitos[9] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[9])),10,6);
  if Length(Auto) > 6 then
    Delete(Auto,1,Length(Auto)-6);
  if DM1.tEmpresaAutorizacao.AsString <> Auto then
    begin
      ShowMessage('Digite a sua autorização no campo "Senha"!');
      fSenha := TfSenha.Create(Self);
      fSenha.ShowModal;
    end;}
end;

procedure TfAcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfAcesso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //Verifica_Data;
  DM1.tUsuario.SetKey;
  DM1.tUsuarioUsuario.AsString := Edit1.Text;
  if DM1.tUsuario.GotoKey then
    begin
      if DM1.tUsuarioSenha.AsString = Edit2.Text then
        begin
          DM1.Mostra_Menu;
          fAcesso.Close;
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

procedure TfAcesso.BitBtn1Click(Sender: TObject);
begin
  //Verifica_Data;
 if Edit1.Text <> '' then
   begin
     DM1.tUsuario.SetKey;
     DM1.tUsuarioUsuario.AsString := Edit1.Text;
     if DM1.tUsuario.GotoKey then
       begin
         if DM1.tUsuarioSenha.AsString = Edit2.Text then
           begin
             DM1.Mostra_Menu;
             fAcesso.Close;
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

procedure TfAcesso.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfAcesso.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    BitBtn1.Click;
end;

procedure TfAcesso.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit2.SetFocus
end;

end.
