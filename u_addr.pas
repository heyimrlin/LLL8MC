unit u_addr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  Tf_addr = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    cmbAddrType: TComboBox;
    Label2: TLabel;
    edit_DevNO: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    memo_addr: TMemo;
    spEdit_Building: TSpinEdit;
    spEdit_Unit: TSpinEdit;
    spEdit_Room: TSpinEdit;
    btn_ok: TButton;
    btn_cancel: TButton;
    procedure cmbAddrTypeChange(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure spEdit_BuildingChange(Sender: TObject);
    procedure spEdit_UnitChange(Sender: TObject);
    procedure spEdit_RoomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    AddrType:integer;
    AddrName,AddrNO,FatherAddr,DevNO,Memo:string;
    { Public declarations }
  end;

var
  f_addr: Tf_addr;

implementation

{$R *.dfm}

uses u_lang;

procedure Tf_addr.cmbAddrTypeChange(Sender: TObject);
begin
  case cmbAddrType.ItemIndex of
  0:begin
      spEdit_Unit.Visible:=false;
      Label4.Visible :=false;
      spEdit_Room.Visible:=false;
      Label5.Visible :=false;
    end;
  1:begin
      spEdit_Unit.Visible:=true;
      Label4.Visible :=true;
      spEdit_Room.Visible:=false;
      Label5.Visible :=false;
    end;
  2:begin
      spEdit_Unit.Visible:=true;
      Label4.Visible :=true;
      spEdit_Room.Visible:=true;
      Label5.Visible :=true;
    end;
  else
  end;
end;

procedure Tf_addr.btn_okClick(Sender: TObject);
begin
  case cmbAddrType.ItemIndex of
  0:begin
      AddrType:=0;
      if Length(spEdit_Building.Text)=1 then
      begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:='0'+spEdit_Building.Text;
      end
      else begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:=spEdit_Building.Text;
      end;
      FatherAddr:=lang_msg_None;
      DevNO:=edit_DevNO.Text;
      Memo:=memo_addr.Text;
    end;
  1:begin
      AddrType:=1;
      if Length(spEdit_Building.Text)=1 then
      begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:='0'+spEdit_Building.Text;
      end
      else begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:=spEdit_Building.Text;
      end;

      FatherAddr:=AddrName;

      if Length(spEdit_Unit.Text)=1 then
      begin
        AddrName:=AddrName+spEdit_Unit.Text+lang_uName;
        AddrNO:=AddrNO+'0'+spEdit_Unit.Text;
      end
      else begin
        AddrName:=AddrName+spEdit_Unit.Text+lang_uName;
        AddrNO:=AddrNO+spEdit_Unit.Text;
      end;
      DevNO:=edit_DevNO.Text;
      Memo:=memo_addr.Text;
    end;
  2:begin
      AddrType:=2;
      if Length(spEdit_Building.Text)=1 then
      begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:='0'+spEdit_Building.Text;
      end
      else begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:=spEdit_Building.Text;
      end;

      if Length(spEdit_Unit.Text)=1 then
      begin
        AddrName:=AddrName+spEdit_Unit.Text+lang_uName;
        AddrNO:=AddrNO+'0'+spEdit_Unit.Text;
      end
      else begin
        AddrName:=AddrName+spEdit_Unit.Text+lang_uName;
        AddrNO:=AddrNO+spEdit_Unit.Text;
      end;

      FatherAddr:=AddrName;

      if Length(spEdit_Room.Text)=3 then
      begin
        AddrName:=AddrName+spEdit_Room.Text+lang_hName;
        AddrNO:=AddrNO+'0'+spEdit_Room.Text;
      end
      else begin
        AddrName:=AddrName+spEdit_Room.Text+lang_hName;
        AddrNO:=AddrNO+spEdit_Room.Text;
      end;
      DevNO:=edit_DevNO.Text;
      Memo:=memo_addr.Text;
    end;
  else
  end;
  ModalResult:=mrOK;
end;

procedure Tf_addr.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure Tf_addr.spEdit_BuildingChange(Sender: TObject);
begin
  {if Length(spEdit_Building.Text)=1 then
    spEdit_Building.Text:='0'+spEdit_Building.Text;}
end;

procedure Tf_addr.spEdit_UnitChange(Sender: TObject);
begin
  {if Length(spEdit_Unit.Text)=1 then
    spEdit_Unit.Text:='0'+spEdit_Unit.Text;}
end;

procedure Tf_addr.spEdit_RoomChange(Sender: TObject);
begin
  {if Length(spEdit_Room.Text)=3 then
    spEdit_Room.Text:='0'+spEdit_Room.Text;}
end;

procedure Tf_addr.FormCreate(Sender: TObject);
begin
  Label6.Caption :=lang_labType;
  Label2.Caption :=lang_labDevNON;
  Label1.Caption :=lang_labAddr;
  Label3.Caption :=lang_bName;
  Label4.Caption :=lang_uName;
  Label5.Caption :=lang_hName;
  Label7.Caption :=lang_labMemo;
  btn_ok.Caption :=lang_btnOK;
  btn_cancel.Caption:=lang_btnCancel;
  cmbAddrType.Items.Clear;
  cmbAddrType.Items.Add(lang_bName);
  cmbAddrType.Items.Add(lang_uName);
  cmbAddrType.Items.Add(lang_hName);
end;

end.
