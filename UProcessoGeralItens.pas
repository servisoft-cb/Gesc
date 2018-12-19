unit UProcessoGeralItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, RxLookup, RxDBComb, Mask, ToolEdit,
  RXDBCtrl, ExtCtrls, DBFilter, DB;

type
  TfProcessoGeralItens = class(TForm)                                                                                 
    Panel3: TPanel;
    Label32: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    DateEdit2: TDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    vItem : Integer;
    { Public declarations }
  end;

var
  fProcessoGeralItens: TfProcessoGeralItens;

implementation

uses UDM1, rsDBUtils, UDM2, UProcessoGeral;

{$R *.dfm}

procedure TfProcessoGeralItens.FormShow(Sender: TObject);
begin
  DM1.tProcessoGeralItem.Open;
end;

procedure TfProcessoGeralItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vItem := 0;
  Action := caFree;
end;

procedure TfProcessoGeralItens.SpeedButton1Click(Sender: TObject);
begin
 DM1.tProcessoGeralItem.Cancel;
 Close;
end;

procedure TfProcessoGeralItens.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date = 0) or (Memo1.Text = '') then
    begin
      ShowMessage('Falta informar dados para confirmar!');
      DateEdit1.SetFocus;
    end
  else
    begin
        if (fProcessoGeral.BitBtn7.Tag = 1) and (vItem > 0) then
          DM1.tProcessoGeralItem.Edit
        else
           begin
            DM1.tProcessoGeralItem.Refresh;
            DM1.tProcessoGeralItem.Last;
            vItem := DM1.tProcessoGeralItemItem.AsInteger + 1;
            DM1.tProcessoGeralItem.Insert;
            DM1.tProcessoGeralItemItem.AsInteger             := vItem;
            DM1.tProcessoGeralItemNumMov.AsInteger           := DM1.tProcessoGeralNumMov.asInteger;
           end;
          DM1.tProcessoGeralItemData.AsDateTime              := DateEdit1.Date;
          if DateEdit2.Date >= Date then
            DM1.tProcessoGeralItemDtConcluida.AsDateTime     := DateEdit2.Date;
          if DateEdit2.Date = 0 then
            DM1.tProcessoGeralItemDtConcluida.Clear;
          DM1.tProcessoGeralItemObs.AsString                 := Memo1.Text;
          DM1.tProcessoGeralItem.Post;
          DM1.tProcessoGeralItem.Refresh;
          if fProcessoGeral.BitBtn7.Tag = 1 then
            Close
          else
            begin
              DateEdit1.Clear;
              Memo1.Clear;
              DateEdit2.Clear;
              DateEdit1.SetFocus;
            end;
    end;
end;
procedure TfProcessoGeralItens.DateEdit2Exit(Sender: TObject);
begin
  if (DateEdit2.Date = 0) or (DateEdit2.Date >= Date) then
    Memo1.SetFocus
  else
    begin
      ShowMessage('A Data não pode ser antes do dia Atual!');
      DateEdit2.SetFocus;
    end;
end;

end.



