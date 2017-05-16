object f_alarmqry: Tf_alarmqry
  Left = 683
  Top = 214
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #26597#35810
  ClientHeight = 168
  ClientWidth = 465
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 95
    Width = 465
    Height = 73
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btn_ok: TButton
      Left = 124
      Top = 30
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 286
      Top = 30
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = btn_cancelClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = -8
    Width = 465
    Height = 112
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 25
      Width = 114
      Height = 21
      AutoSize = False
      Caption = #25253#35686#31867#22411
    end
    object Label2: TLabel
      Left = 263
      Top = 25
      Width = 77
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = #22320#22336
    end
    object Label3: TLabel
      Left = 9
      Top = 74
      Width = 114
      Height = 21
      AutoSize = False
      Caption = #25253#35686#26102#38388
    end
    object Label4: TLabel
      Left = 281
      Top = 74
      Width = 21
      Height = 21
      AutoSize = False
      Caption = #21040
    end
    object cmbAlarmType: TComboBox
      Left = 125
      Top = 21
      Width = 124
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 21
      TabOrder = 0
      Items.Strings = (
        #27714#21161#25253#35686)
    end
    object edit_devNO: TEdit
      Left = 349
      Top = 21
      Width = 107
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object dt0: TDateTimePicker
      Left = 125
      Top = 70
      Width = 145
      Height = 29
      Date = 42720.365955717590000000
      Time = 42720.365955717590000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object dt1: TDateTimePicker
      Left = 313
      Top = 70
      Width = 145
      Height = 29
      Date = 42720.365955717590000000
      Time = 42720.365955717590000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
  end
end
