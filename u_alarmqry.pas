unit u_alarmqry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tf_alarmqry = class(TForm)
    GroupBox2: TGroupBox;
    btn_ok: TButton;
    btn_cancel: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    cmbAlarmType: TComboBox;
    Label2: TLabel;
    edit_devNO: TEdit;
    Label3: TLabel;
    dt0: TDateTimePicker;
    Label4: TLabel;
    dt1: TDateTimePicker;
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    AlarmType:integer;
    DevNO,AlarmTime0,AlarmTime1:string;
    { Public declarations }
  end;

var
  f_alarmqry: Tf_alarmqry;

implementation

{$R *.dfm}
uses u_public, u_lang;

procedure Tf_alarmqry.btn_okClick(Sender: TObject);
begin
  AlarmType:=cmbAlarmType.ItemIndex;
  DevNO:=edit_devNO.Text;
  AlarmTime0:=GetRegTime(FormatDateTime('YYYYMMDDhhmm',dt0.DateTime));
  AlarmTime1:=GetRegTime(FormatDateTime('YYYYMMDDhhmm',dt1.DateTime));
  ModalResult:=mrOK;
end;

procedure Tf_alarmqry.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure Tf_alarmqry.FormCreate(Sender: TObject);
begin
  Label1.Caption :=lang_dgAlarmColum1;
  Label2.Caption :=lang_labAddr;
  Label3.Caption :=lang_dgAlarmColum4;
  Label4.Caption :=lang_labTo;
  btn_ok.Caption :=lang_btnOK;
  btn_cancel.Caption:=lang_btnCancel;
  cmbAlarmType.Items.Clear;
  cmbAlarmType.Items.Add(lang_alarmType0);
  cmbAlarmType.Items.Add('防区触发报警');
  cmbAlarmType.Items.Add('胁迫开门报警');
  cmbAlarmType.Items.Add('开门超时报警');
  cmbAlarmType.ItemIndex:=0;

  dt0.DateTime:=Now();
  dt1.DateTime:=Now();
end;

end.
