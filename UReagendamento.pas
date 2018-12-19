unit UReagendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, Grids, DBGrids,
  SMDBGrid, DBCtrls, RzEdit;

type
  TfReagendamento = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    SMDBGrid1: TSMDBGrid;
    DBMemo1: TDBMemo;
    BitBtn3: TBitBtn;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReagendamento: TfReagendamento;

implementation

uses UDM1, UDM2;

{$R *.dfm}

procedure TfReagendamento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfReagendamento.BitBtn1Click(Sender: TObject);
begin
  if (DateEdit1.Date < 1) or (Memo1.Text = '') or (RzDateTimeEdit1.Text = '') then
    ShowMessage('Falta informar a data, hora ou motivo!')
  else
  if MessageDlg('Confirma o reagendamento?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      DM1.tAgendaHist.Refresh;
      DM1.tAgendaHist.Last;
      DM2.tAgendaHist2.Refresh;
      DM2.tAgendaHist2.Last;
      DM1.tAgendaHist.Insert;
      DM1.tAgendaHistCodigo.AsInteger          := DM1.tAgendaCodigo.AsInteger;
      DM1.tAgendaHistItem.AsInteger            := DM2.tAgendaHist2Item.AsInteger + 1;
      DM1.tAgendaHistDtAntAgenda.AsDateTime    := DM1.tAgendaDtAgenda.AsDateTime;
      DM1.tAgendaHistHrAntAgenda.AsDateTime    := DM1.tAgendaHrAgenda.AsDateTime;
      DM1.tAgendaHistMotivoReagendamento.Value := Memo1.Text;
      DM1.tAgendaHist.Post;

      DM1.tAgenda.Edit;
      DM1.tAgendaDtAgenda.AsDateTime := DateEdit1.Date;
      DM1.tAgendaHrAgenda.AsDateTime := RzDateTimeEdit1.Time;
      DM1.tAgenda.Post;

      Close;
    end;
end;

procedure TfReagendamento.FormShow(Sender: TObject);
begin
  Memo1.Text := '';
end;

procedure TfReagendamento.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Confirma o reagendamento?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      DM1.tAgendaHist.Last;
      DM1.tAgenda.Edit;
      DM1.tAgendaDtAgenda.AsDateTime := DM1.tAgendaHistDtAntAgenda.AsDateTime;
      DM1.tAgenda.Post;

      DM1.tAgendaHist.Delete;
      DM1.tAgendaHist.Refresh;
    end;
end;

end.
