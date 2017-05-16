object f_AppName: Tf_AppName
  Left = 383
  Top = 243
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #23567#21306
  ClientHeight = 65
  ClientWidth = 425
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
    Top = -9
    Width = 425
    Height = 74
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 42
      Height = 21
      AutoSize = False
      Caption = #21517#31216
    end
    object edit_AppName: TEdit
      Left = 64
      Top = 27
      Width = 265
      Height = 29
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object btn_save: TButton
      Left = 340
      Top = 27
      Width = 75
      Height = 29
      Caption = #20445#23384
      TabOrder = 1
      OnClick = btn_saveClick
    end
  end
end
