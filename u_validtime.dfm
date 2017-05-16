object frm_validtime: Tfrm_validtime
  Left = 522
  Top = 294
  Width = 369
  Height = 183
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #26377#25928#26399#35774#32622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 145
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 48
      Height = 21
      Caption = #22995#21517#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 20
      Top = 60
      Width = 48
      Height = 21
      Caption = #21345#21495#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 100
      Width = 64
      Height = 21
      Caption = #26377#25928#26399#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object edit_name: TEdit
      Left = 87
      Top = 15
      Width = 126
      Height = 29
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object date_valid: TDateTimePicker
      Left = 87
      Top = 96
      Width = 126
      Height = 29
      Date = 42720.365955717590000000
      Time = 42720.365955717590000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
    end
    object btn_ok: TButton
      Left = 245
      Top = 32
      Width = 75
      Height = 25
      Caption = #30830#23450
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 245
      Top = 88
      Width = 75
      Height = 25
      Caption = #21462#28040
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_cancelClick
    end
    object edit_cardNO: TEdit
      Left = 87
      Top = 57
      Width = 126
      Height = 29
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 4
    end
  end
end
