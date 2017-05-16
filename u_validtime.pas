unit u_validtime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  Tfrm_validtime = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edit_name: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    date_valid: TDateTimePicker;
    btn_ok: TButton;
    btn_cancel: TButton;
    edit_cardNO: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_validtime: Tfrm_validtime;

implementation

{$R *.dfm}

procedure Tfrm_validtime.FormCreate(Sender: TObject);
begin
  date_valid.DateTime:=Now();
end;

procedure Tfrm_validtime.btn_okClick(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure Tfrm_validtime.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

end.
