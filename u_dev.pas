unit u_dev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  Tf_dev = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    cmbDevType: TComboBox;
    edit_DevNO: TEdit;
    memo_dev: TMemo;
    spEdit_Building: TSpinEdit;
    spEdit_Unit: TSpinEdit;
    spEdit_Room: TSpinEdit;
    btn_ok: TButton;
    btn_cancel: TButton;
    Label8: TLabel;
    edit_DevIP: TEdit;
    procedure cmbDevTypeChange(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure spEdit_BuildingChange(Sender: TObject);
    procedure spEdit_UnitChange(Sender: TObject);
    procedure spEdit_RoomChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DevType:integer;
    AddrName,AddrNO,DevNO,DevIP,Memo:string;
    { Public declarations }
  end;

var
  f_dev: Tf_dev;

implementation

{$R *.dfm}

uses u_lang;

procedure Tf_dev.cmbDevTypeChange(Sender: TObject);
begin
  case cmbDevType.ItemIndex of
  0:begin
    Label1.Visible:=true;
    spEdit_Building.Visible:=true;
    Label3.Visible:=true;
    spEdit_Unit.Visible:=false;
    Label4.Visible :=false;
    spEdit_Room.Visible:=false;
    Label5.Visible :=false;
    end;
  1:begin
    Label1.Visible:=true;
    spEdit_Building.Visible:=true;
    Label3.Visible:=true;
    spEdit_Unit.Visible:=true;
    Label4.Visible :=true;
    spEdit_Room.Visible:=false;
    Label5.Visible :=false;
    end;
  2:begin
    Label1.Visible:=true;
    spEdit_Building.Visible:=true;
    Label3.Visible:=true;
    spEdit_Unit.Visible:=true;
    Label4.Visible :=true;
    spEdit_Room.Visible:=false;
    Label5.Visible :=false;
    end;
  3:begin
    Label1.Visible:=true;
    spEdit_Building.Visible:=true;
    Label3.Visible:=true;
    spEdit_Unit.Visible:=true;
    Label4.Visible :=true;
    spEdit_Room.Visible:=true;
    Label5.Visible :=true;
    end;
  4:begin
    Label1.Visible:=false;
    spEdit_Building.Visible:=false;
    Label3.Visible:=false;
    spEdit_Unit.Visible:=false;
    Label4.Visible :=false;
    spEdit_Room.Visible:=false;
    Label5.Visible :=false;
    end;
  else
  end;
end;

procedure Tf_dev.btn_okClick(Sender: TObject);
begin
  case cmbDevType.ItemIndex of
  0:begin
      DevType:=0;
      if Length(spEdit_Building.Text)=1 then
      begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:='0'+spEdit_Building.Text;
      end
      else begin
        AddrName:=spEdit_Building.Text+lang_bName;
        AddrNO:=spEdit_Building.Text;
      end;
      DevNO:=edit_DevNO.Text;
      Memo:=memo_dev.Text;
    end;
  1:begin
      DevType:=1;
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
      DevNO:=edit_DevNO.Text;
      Memo:=memo_dev.Text;
    end;
  2:begin
      DevType:=2;
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
      DevNO:=edit_DevNO.Text;
      Memo:=memo_dev.Text;
    end;
  3:begin
      DevType:=3;
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
      Memo:=memo_dev.Text;
    end;
  4:begin
      DevType:=4;
      DevNO:=edit_DevNO.Text;
      Memo:=memo_dev.Text;
    end;
  else
  end;
  DevIP:=edit_DevIP.Text;
  ModalResult:=mrOK;
end;

procedure Tf_dev.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure Tf_dev.spEdit_BuildingChange(Sender: TObject);
begin
  {if Length(spEdit_Building.Text)=1 then
    spEdit_Building.Text:='0'+spEdit_Building.Text;}
end;

procedure Tf_dev.spEdit_UnitChange(Sender: TObject);
begin
  {if Length(spEdit_Unit.Text)=1 then
    spEdit_Unit.Text:='0'+spEdit_Unit.Text;}
end;

procedure Tf_dev.spEdit_RoomChange(Sender: TObject);
begin
  {if Length(spEdit_Room.Text)=3 then
    spEdit_Room.Text:='0'+spEdit_Room.Text;}
end;

procedure Tf_dev.FormCreate(Sender: TObject);
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
  cmbDevType.Items.Clear;
  cmbDevType.Items.Add(lang_devType0);
  cmbDevType.Items.Add(lang_devType1);
  cmbDevType.Items.Add(lang_devType2);
  cmbDevType.Items.Add(lang_devType3);
  cmbDevType.Items.Add(lang_devType4);
end;

end.
