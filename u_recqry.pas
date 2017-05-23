unit u_recqry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tf_recqry = class(TForm)
    GroupBox2: TGroupBox;
    btn_ok: TButton;
    btn_cancel: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbCardType: TComboBox;
    edit_cardNO: TEdit;
    dt0: TDateTimePicker;
    dt1: TDateTimePicker;
    Label5: TLabel;
    edit_recDev: TEdit;
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    CardType:integer;
    CardNO,RecDev,RecTime0,RecTime1:string;
    { Public declarations }
  end;

var
  f_recqry: Tf_recqry;

implementation

{$R *.dfm}
uses u_public, u_lang;

procedure Tf_recqry.btn_okClick(Sender: TObject);
begin
  CardType:=cmbCardType.ItemIndex;
  CardNO:=edit_cardNO.Text;
  RecDev:=edit_recDev.Text;
  RecTime0:=GetRegTime(FormatDateTime('YYYYMMDDhhmm',dt0.DateTime));
  RecTime1:=GetRegTime(FormatDateTime('YYYYMMDDhhmm',dt1.DateTime));
  ModalResult:=mrOK;
end;

procedure Tf_recqry.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure Tf_recqry.FormCreate(Sender: TObject);
begin
  {Label1.Caption :=lang_dgCardRecColum1;
  Label2.Caption :=lang_dgCardRecColum2;
  Label5.Caption :=lang_dgCardRecColum3;
  Label3.Caption :=lang_dgCardRecColum4;}
  Label4.Caption :=lang_labTo;
  btn_ok.Caption :=lang_btnOK;
  btn_cancel.Caption:=lang_btnCancel;
  cmbCardType.Items.Clear;
  cmbCardType.Items.Add(lang_cardTypeV+'/'+lang_cardTypeC);
  cmbCardType.Items.Add(lang_cardTypeV+'/'+lang_cardType3);
  cmbCardType.Items.Add(lang_cardTypeX+'/'+lang_cardTypeC);
  cmbCardType.Items.Add(lang_cardTypeX+'/'+lang_cardType3);
  cmbCardType.Items.Add('主机密码开门');
  cmbCardType.Items.Add('主机呼叫');
  cmbCardType.ItemIndex:=0;

  dt0.DateTime:=Now();
  dt1.DateTime:=Now();
end;

end.
