object frm_login: Tfrm_login
  Left = 1615
  Top = 896
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #35831#36755#20837#30331#24405#24080#21495#21644#23494#30721
  ClientHeight = 146
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
    9999999999999FFFFFFFFF9FFFF99FFFFF99FF9FFFF99FF99F9F9F9F99F99FFF
    F999F999FFF99FFF9999999FFFF99FFFFF9FFF9FFFF99FFFFF9FFF9FFFF99FF9
    FFFFFFFF9FF99FFF9999999999F99FFFFF9FF9FFFFF99FFFFF9FF9FFFFF99FFF
    FF9FF99FFFF99FFFF9999999FFF99FFFFFFF9FFFFFF999999999999999990000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 90
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 20
      Width = 48
      Height = 12
      Caption = #30331#24405#24080#21495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 30
      Top = 58
      Width = 48
      Height = 12
      Caption = #30331#24405#23494#30721
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edit_loginname: TEdit
      Left = 87
      Top = 16
      Width = 168
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
    end
    object edit_psw: TEdit
      Left = 87
      Top = 54
      Width = 168
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      MaxLength = 30
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 90
    Width = 289
    Height = 56
    Align = alClient
    TabOrder = 1
    object btn_ok: TBitBtn
      Left = 24
      Top = 16
      Width = 100
      Height = 23
      Caption = #30830#23450
      Default = True
      TabOrder = 0
      OnClick = btn_okClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btn_cancel: TBitBtn
      Left = 169
      Top = 16
      Width = 100
      Height = 23
      Caption = #21462#28040
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object AdoConUser: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 136
    Top = 80
  end
  object AdoQryUser: TADOQuery
    Connection = AdoConUser
    Parameters = <>
    Left = 160
    Top = 80
  end
  object DSUser: TDataSource
    DataSet = AdoQryUser
    Left = 184
    Top = 80
  end
end
