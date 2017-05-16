object f_dev: Tf_dev
  Left = 759
  Top = 337
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #35774#22791#20449#24687
  ClientHeight = 260
  ClientWidth = 440
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
    Top = -6
    Width = 440
    Height = 265
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 31
      Width = 32
      Height = 21
      Caption = #31867#22411
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 245
      Top = 31
      Width = 64
      Height = 21
      Alignment = taRightJustify
      Caption = #35774#22791#21495#30721
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 76
      Width = 32
      Height = 21
      Caption = #22320#22336
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 148
      Top = 76
      Width = 62
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = #26635
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 283
      Top = 76
      Width = 32
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = #21333#20803
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 387
      Top = 76
      Width = 16
      Height = 21
      Caption = #23460
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 16
      Top = 150
      Width = 32
      Height = 21
      Caption = #22791#27880
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 115
      Width = 15
      Height = 21
      Caption = 'IP'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object cmbDevType: TComboBox
      Left = 80
      Top = 29
      Width = 137
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 16
      TabOrder = 0
      OnChange = cmbDevTypeChange
      Items.Strings = (
        #31649#29702#26426
        #20027#26426
        #21103#20027#26426
        #20998#26426
        #22260#22681#26426)
    end
    object edit_DevNO: TEdit
      Left = 314
      Top = 29
      Width = 113
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object memo_dev: TMemo
      Left = 80
      Top = 152
      Width = 345
      Height = 57
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
    end
    object spEdit_Building: TSpinEdit
      Left = 80
      Top = 74
      Width = 65
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 2
      Value = 1
      Visible = False
      OnChange = spEdit_BuildingChange
    end
    object spEdit_Unit: TSpinEdit
      Left = 216
      Top = 74
      Width = 65
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 3
      Value = 1
      Visible = False
      OnChange = spEdit_UnitChange
    end
    object spEdit_Room: TSpinEdit
      Left = 320
      Top = 74
      Width = 65
      Height = 26
      MaxValue = 9999
      MinValue = 101
      TabOrder = 4
      Value = 101
      Visible = False
      OnChange = spEdit_RoomChange
    end
    object btn_ok: TButton
      Left = 116
      Top = 224
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 6
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 243
      Top = 224
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 7
      OnClick = btn_cancelClick
    end
    object edit_DevIP: TEdit
      Left = 80
      Top = 114
      Width = 345
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 8
    end
  end
end
