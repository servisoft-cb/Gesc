unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, DB, DBTables, ToolEdit;

type
  TfEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Bevel2: TBevel;
    Label22: TLabel;
    FilenameEdit1: TFilenameEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    procedure Habilita;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDM1;

{$R *.DFM}
procedure TfEmpresa.Habilita;
begin
  BitBtn1.Enabled := not(BitBtn1.Enabled);
  BitBtn2.Enabled := not(BitBtn2.Enabled);
  BitBtn3.Enabled := not(BitBtn3.Enabled);
  BitBtn4.Enabled := not(BitBtn4.Enabled);  
  Panel3.Enabled  := not(Panel3.Enabled);
end;

procedure TfEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfEmpresa.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfEmpresa.BitBtn1Click(Sender: TObject);
begin
  DM1.tEmpresa.Edit;
  Habilita;
  DBEdit1.SetFocus;
end;

procedure TfEmpresa.BitBtn4Click(Sender: TObject);
begin
  DM1.tEmpresa.Cancel;
  Habilita;
end;

procedure TfEmpresa.BitBtn2Click(Sender: TObject);
begin
  Dm1.tEmpresaLogoEmpresa.AsString := FilenameEdit1.Text;
  DM1.tEmpresa.Post;
  Habilita;
end;

procedure TfEmpresa.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TfEmpresa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DM1.tEmpresa.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar a Empresa antes de fechar esta janela!');
      CanClose := False;
    end
  else
    CanClose := True;
end;

procedure TfEmpresa.FormShow(Sender: TObject);
begin
  FilenameEdit1.Text := Dm1.tEmpresaLogoEmpresa.AsString;
end;

end.
