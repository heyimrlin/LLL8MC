unit u_select15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, AppEvnts;

type
  Tf_select15 = class(TForm)
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    edit_qry: TEdit;
    btn_sel: TBitBtn;
    btn_close: TBitBtn;
    btn_qry: TBitBtn;
    DSSelect: TDataSource;
    AdoQrySelect: TADOQuery;
    AdoQrySelectID: TAutoIncField;
    AdoQrySelectCardType: TIntegerField;
    AdoQrySelectCardNO: TWideStringField;
    AdoQrySelectCardHex: TWideStringField;
    AdoQrySelectunitMac: TWideStringField;
    AdoQrySelectuserMac: TWideStringField;
    AdoQrySelectuser6: TWideStringField;
    ApplicationEvents1: TApplicationEvents;
    AdoQrySelectCardState: TIntegerField;
    AdoQrySelectWallNO: TWideStringField;
    AdoQrySelectCardMemo: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btn_selClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_qryClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure AdoQrySelectCardTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AdoQrySelectCardStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_select15: Tf_select15;

implementation

{$R *.dfm}

uses u_main, u_public, u_lang;

procedure Tf_select15.FormCreate(Sender: TObject);
begin
  Caption :=lang_btnSel;
  DBGrid1.Columns[1].Title.Caption :=lang_dgCardColum5;
  DBGrid1.Columns[2].Title.Caption :=lang_dgCardColum1;
  DBGrid1.Columns[3].Title.Caption :=lang_dgCardColum2;
  DBGrid1.Columns[5].Title.Caption :=lang_dgCardColum3;
  DBGrid1.Columns[6].Title.Caption :=lang_dgCardColum4;
  DBGrid1.Columns[8].Title.Caption :=lang_dgCardColum6;
  DBGrid1.Hint:=lang_hintChooseCards;
  btn_qry.Caption :=lang_btnQry;
  btn_sel.Caption :=lang_btnSel;
  btn_close.Caption:=lang_btnClose;
  RefreshRec(AdoQrySelect,'select * from t_card where WallNO is null');
end;

procedure Tf_select15.btn_selClick(Sender: TObject);
begin
  if AdoQrySelect.RecordCount < 1 then
    ModalResult := mrCancel
  else
    ModalResult := mrOK;
end;

procedure Tf_select15.btn_closeClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tf_select15.DBGrid1DblClick(Sender: TObject);
begin
  btn_sel.Click;
end;

procedure Tf_select15.btn_qryClick(Sender: TObject);
begin
  if Length(edit_qry.Text) = 0 then
  begin
    AdoQrySelect.Filtered := false;
    exit;
  end
  else begin
    AdoQrySelect.Filter := 'CardNO like '+QuotedStr('%'+edit_qry.Text+'%');
    AdoQrySelect.Filtered := true;
  end;
end;

procedure Tf_select15.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if  (DBGrid1.Focused)  And  (Msg.message  =  WM_MOUSEWHEEL)  then
  begin
    if  Msg.wParam  >  0  then
      SendMessage(DBGrid1.Handle,  WM_KEYDOWN,  VK_UP,  0)
    else
      SendMessage(DBGrid1.Handle,  WM_KEYDOWN,  VK_DOWN,  0);
    Handled  :=  True;
  end;
end;

procedure Tf_select15.AdoQrySelectCardTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value=0 then
    Text:=lang_cardType0
  else if Sender.Value=1 then
    Text:=lang_cardType1
  else if Sender.Value=2 then
    Text:=lang_cardType2
  else if Sender.Value=3 then
    Text:=lang_cardType3
  else
    Text:=lang_cardTypeU;
end;

procedure Tf_select15.AdoQrySelectCardStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value=0 then
    Text:=lang_stateInvalid
  else if Sender.Value=1 then
    Text:=lang_stateValid
  else
    Text:=lang_stateUnknown;
end;

end.
