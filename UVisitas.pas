unit UVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, RxLookup, RxDBComb, Mask, ToolEdit,
  RXDBCtrl, ExtCtrls, DBFilter, DB;

type
  TfVisitas = class(TForm)
    Panel3: TPanel;
    Label32: TLabel;
    Panel7: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    RxDBFilter1: TRxDBFilter;
    Memo1: TMemo;
    DateEdit1: TDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    vItem : Integer;
    { Public declarations }
  end;

var
  fVisitas: TfVisitas;

implementation

uses UDM1, UConsMovProcessoVisita, rsDBUtils, UDM2;

{$R *.dfm}

procedure TfVisitas.FormShow(Sender: TObject);
begin
  RxDBFilter1.Active := True;
end;

procedure TfVisitas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RxDBFilter1.Active := False;
  vItem := 0;
  Action := caFree;
end;

procedure TfVisitas.SpeedButton1Click(Sender: TObject);
begin
 DM1.tMovProcessoVisita.Cancel;
 Close;
end;

procedure TfVisitas.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date = 0) or (Memo1.Text = '') or (RxDBLookupCombo1.KeyValue = 0) then
    begin
      ShowMessage('Falta informar dados para confirmar!');
      DateEdit1.SetFocus;
    end
  else
    begin
        if (fConsMovProcessoVisitas.BitBtn7.Tag = 1) and (vItem > 0) then
          begin
            DM1.tMovProcessoVisita.Edit;
            fConsMovProcessoVisitas.tMovProcessoVisita.Edit;
          end
        else
           begin
            fConsMovProcessoVisitas.tMovProcessoVisita.Refresh;
            fConsMovProcessoVisitas.tMovProcessoVisita.Last;
            vItem := fConsMovProcessoVisitas.tMovProcessoVisitaItem.AsInteger + 1;
            DM1.tMovProcessoVisita.Insert;
            DM1.tMovProcessoVisitaItem.AsInteger             := vItem;
            DM1.tMovProcessoVisitaNumMov.AsInteger           := fConsMovProcessoVisitas.qConsultaNumMov.asInteger;
           end;
          DM1.tMovProcessoVisitaCodFuncionario.AsInteger     := RxDBLookupCombo1.KeyValue;
          DM1.tMovProcessoVisitaDtVisita.AsDateTime          := DateEdit1.Date;
          DM1.tMovProcessoVisitaObs.AsString                 := Memo1.Text;
          DM1.tMovProcessoVisita.Post;
          DM1.tMovProcessoVisita.Refresh;
          if fConsMovProcessoVisitas.tMovProcessoVisita.State in [dsEdit] then
            begin
             fConsMovProcessoVisitas.tMovProcessoVisitaCodFuncionario.AsInteger     := RxDBLookupCombo1.KeyValue;
             fConsMovProcessoVisitas.tMovProcessoVisitaDtVisita.AsDateTime          := DateEdit1.Date;
             fConsMovProcessoVisitas.tMovProcessoVisitaObs.AsString                 := Memo1.Text;
             fConsMovProcessoVisitas.tMovProcessoVisita.Post;
             fConsMovProcessoVisitas.tMovProcessoVisita.Refresh;
           end;
          fConsMovProcessoVisitas.tMovProcessoVisita.Refresh;
          if fConsMovProcessoVisitas.BitBtn7.Tag = 1 then
            Close
          else
            begin
              DateEdit1.Clear;
              Memo1.Clear;
              RxDBLookupCombo1.ClearValue;
              DateEdit1.SetFocus;
            end;
    end;
end;


procedure TfVisitas.RxDBLookupCombo1Enter(Sender: TObject);
begin
  DM2.tPessoa2.IndexFieldNames := 'Nome';
end;

end.



