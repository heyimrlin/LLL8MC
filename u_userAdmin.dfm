object f_userAdmin: Tf_userAdmin
  Left = 622
  Top = 283
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #29992#25143#31649#29702
  ClientHeight = 117
  ClientWidth = 441
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = -4
    Width = 441
    Height = 121
    TabOrder = 0
    object Label2: TLabel
      Left = 216
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #30331#24405#23494#30721#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 21
      Top = 24
      Width = 90
      Height = 16
      AutoSize = False
      Caption = #29992#25143#21517#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 80
      Width = 90
      Height = 16
      AutoSize = False
      Caption = #29992#25143#26435#38480#65306
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edit_name: TEdit
      Left = 112
      Top = 20
      Width = 92
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object edit_psw: TEdit
      Left = 288
      Top = 20
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
    end
    object cbb_permit: TComboBox
      Left = 112
      Top = 76
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        #31649#29702#21592
        #35775#23458)
    end
    object Button1: TButton
      Left = 344
      Top = 75
      Width = 75
      Height = 25
      Caption = #30830#23450
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
