object f_recqry: Tf_recqry
  Left = 731
  Top = 297
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #26597#35810
  ClientHeight = 231
  ClientWidth = 562
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
    Top = 159
    Width = 561
    Height = 72
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btn_ok: TButton
      Left = 156
      Top = 30
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = btn_okClick
    end
    object btn_cancel: TButton
      Left = 323
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
    Width = 561
    Height = 176
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 280
      Top = 26
      Width = 99
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = #38376#31105#31867#22411
    end
    object Label2: TLabel
      Left = 16
      Top = 26
      Width = 121
      Height = 21
      AutoSize = False
      Caption = #21345#21495'/'#25151#21495
    end
    object Label3: TLabel
      Left = 16
      Top = 130
      Width = 129
      Height = 21
      AutoSize = False
      Caption = #38376#31105#35760#24405#26102#38388
    end
    object Label4: TLabel
      Left = 338
      Top = 130
      Width = 21
      Height = 21
      AutoSize = False
      Caption = #21040
    end
    object Label5: TLabel
      Left = 16
      Top = 78
      Width = 132
      Height = 21
      AutoSize = False
      Caption = #38376#31105#28857
    end
    object cmbCardType: TComboBox
      Left = 383
      Top = 22
      Width = 171
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 21
      TabOrder = 0
      Items.Strings = (
        #26377#25928#21345'/'#26222#36890#21345
        #26377#25928#21345'/'#24033#26356#21345
        #26080#25928#21345'/'#26222#36890#21345
        #26080#25928#21345'/'#24033#26356#21345)
    end
    object edit_cardNO: TEdit
      Left = 150
      Top = 22
      Width = 126
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object dt0: TDateTimePicker
      Left = 151
      Top = 125
      Width = 165
      Height = 29
      Date = 0.365955717592441900
      Time = 0.365955717592441900
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object dt1: TDateTimePicker
      Left = 384
      Top = 125
      Width = 165
      Height = 29
      Date = 0.365955717592441900
      Time = 0.365955717592441900
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
    object edit_recDev: TEdit
      Left = 151
      Top = 73
      Width = 171
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
    end
  end
end
