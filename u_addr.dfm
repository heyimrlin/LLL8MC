object f_addr: Tf_addr
  Left = 869
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #27004#26635#20303#25143#20449#24687#31649#29702
  ClientHeight = 257
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = -8
    Width = 433
    Height = 265
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 30
      Width = 32
      Height = 21
      Caption = #31867#22411
    end
    object Label2: TLabel
      Left = 222
      Top = 30
      Width = 64
      Height = 21
      Alignment = taRightJustify
      Caption = #35774#22791#21495#30721
    end
    object Label1: TLabel
      Left = 16
      Top = 77
      Width = 32
      Height = 21
      Caption = #22320#22336
    end
    object Label3: TLabel
      Left = 145
      Top = 77
      Width = 62
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = #26635
    end
    object Label4: TLabel
      Left = 275
      Top = 77
      Width = 32
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = #21333#20803
      Visible = False
    end
    object Label5: TLabel
      Left = 379
      Top = 77
      Width = 16
      Height = 21
      Caption = #23460
      Visible = False
    end
    object Label7: TLabel
      Left = 16
      Top = 119
      Width = 32
      Height = 21
      Caption = #22791#27880
    end
    object cmbAddrType: TComboBox
      Left = 80
      Top = 26
      Width = 89
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 21
      TabOrder = 0
      OnChange = cmbAddrTypeChange
      Items.Strings = (
        #27004#26635
        #21333#20803
        #20303#25143)
    end
    object edit_DevNO: TEdit
      Left = 300
      Top = 26
      Width = 121
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object memo_addr: TMemo
      Left = 80
      Top = 120
      Width = 337
      Height = 89
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
    end
    object spEdit_Building: TSpinEdit
      Left = 80
      Top = 72
      Width = 65
      Height = 31
      MaxValue = 99
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = spEdit_BuildingChange
    end
    object spEdit_Unit: TSpinEdit
      Left = 208
      Top = 72
      Width = 65
      Height = 31
      MaxValue = 99
      MinValue = 1
      TabOrder = 3
      Value = 1
      Visible = False
      OnChange = spEdit_UnitChange
    end
    object spEdit_Room: TSpinEdit
      Left = 312
      Top = 72
      Width = 65
      Height = 31
      MaxValue = 9999
      MinValue = 101
      TabOrder = 4
      Value = 101
      Visible = False
      OnChange = spEdit_RoomChange
    end
    object btn_ok: TButton
      Left = 108
      Top = 224
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 6
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 235
      Top = 224
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 7
      OnClick = btn_cancelClick
    end
  end
end
