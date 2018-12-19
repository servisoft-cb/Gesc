unit USenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TfSenha = class(TForm)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSenha: TfSenha;

implementation

uses UDM1, UAcesso;

{$R *.DFM}

procedure TfSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfSenha.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = Auto then
    begin
      DM1.tEmpresa.Edit;
      DM1.tEmpresaAutorizacao.AsString := Auto;
      DM1.tEmpresa.Post;
    end
  else
    begin
      ShowMessage('Autorização incorreta!'+#13+#13+
                  'O programa será fechado!');
      Application.Terminate;
    end;
  Close;
end;

procedure TfSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssALt]) and (Key = vk_F4) then
    Application.Terminate;
end;

end.
