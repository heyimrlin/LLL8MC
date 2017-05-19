object MainForm: TMainForm
  Left = 823
  Top = 248
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'L8'
  ClientHeight = 639
  ClientWidth = 1034
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 169
    Top = 45
    Width = 872
    Height = 580
    ActivePage = TabSheet3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #25151#20135#31649#29702
      object GroupBox35: TGroupBox
        Left = 0
        Top = 508
        Width = 857
        Height = 60
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label47: TLabel
          Left = 260
          Top = 25
          Width = 32
          Height = 16
          AutoSize = False
          Caption = #31867#22411
        end
        object Label48: TLabel
          Left = 432
          Top = 25
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = #22320#22336
        end
        object cmbAddrType: TComboBox
          Left = 299
          Top = 21
          Width = 89
          Height = 24
          BevelKind = bkSoft
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            #26635
            #21333#20803
            #23460)
        end
        object edit_AddrName: TEdit
          Left = 468
          Top = 21
          Width = 121
          Height = 24
          BevelKind = bkSoft
          BorderStyle = bsNone
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 1
        end
        object btn_AddrQry: TButton
          Left = 767
          Top = 20
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = btn_AddrQryClick
        end
      end
      object TreeHouse: TTreeView
        Left = 0
        Top = 1
        Width = 233
        Height = 512
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Images = IconList
        Indent = 19
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        ShowButtons = False
        TabOrder = 1
        OnClick = TreeHouseClick
        Items.Data = {
          01000000210000000400000000000000FFFFFFFFFFFFFFFF0000000000000000
          08D0A1C7F8C3FBB3C6}
      end
      object PageControl5: TPageControl
        Left = 232
        Top = 0
        Width = 625
        Height = 513
        ActivePage = TabSheet23
        TabOrder = 2
        object TabSheet23: TTabSheet
          Caption = #25151#20135
          object DBGridAddr: TDBGrid
            Left = 3
            Top = 1
            Width = 610
            Height = 484
            Hint = #28857#20987#40736#26631#21491#38190#36827#34892#31649#29702#65281
            DataSource = DSAddr
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentColor = True
            ParentFont = False
            PopupMenu = pMenu_addr
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taCenter
                Title.Caption = #32534#21495
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AddrType'
                Title.Caption = #31867#22411
                Title.Color = clWhite
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AddrName'
                Title.Alignment = taCenter
                Title.Caption = #35774#22791#22320#22336
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AddrNO'
                Title.Caption = #27004#26635#32534#30721
                Title.Color = clWhite
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'FatherAddr'
                Title.Alignment = taCenter
                Title.Caption = #19978#23646#27004#26635
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DevNO'
                Title.Alignment = taCenter
                Title.Caption = #35774#22791#21495#30721
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Memo'
                Title.Alignment = taCenter
                Title.Caption = #22791#27880
                Width = 275
                Visible = True
              end>
          end
        end
        object TabSheet24: TTabSheet
          Caption = #20303#25143
          ImageIndex = 1
          object DBGridPerson: TDBGrid
            Left = 3
            Top = 1
            Width = 564
            Height = 484
            DataSource = DSPerson
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentColor = True
            ParentFont = False
            PopupMenu = pMenu_person
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGridPersonDblClick
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PersonName'
                Title.Alignment = taCenter
                Title.Caption = #25345#21345#20154
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardNO'
                Title.Alignment = taCenter
                Title.Caption = #21345#21495
                Width = 130
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardState'
                Title.Alignment = taCenter
                Title.Caption = #21345#29366#24577
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ValidTime'
                Title.Alignment = taCenter
                Title.Caption = #26377#25928#26102#38388
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardMemo'
                Title.Alignment = taCenter
                Title.Caption = #22791#27880
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unitMac'
                Title.Caption = #20027#26426#21495
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'userMac'
                Title.Caption = #20998#26426#21495
                Visible = False
              end>
          end
          object btn_p_add: TButton
            Left = 572
            Top = 2
            Width = 43
            Height = 25
            Caption = #26032#22686
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btn_p_addClick
          end
          object btn_p_edit: TButton
            Left = 573
            Top = 30
            Width = 43
            Height = 25
            Caption = #20462#25913
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btn_p_editClick
          end
          object btn_p_del: TButton
            Left = 573
            Top = 59
            Width = 43
            Height = 25
            Caption = #21024#38500
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btn_p_delClick
          end
          object btn_p_save: TButton
            Left = 573
            Top = 88
            Width = 43
            Height = 25
            Caption = #20445#23384
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btn_p_saveClick
          end
          object btn_p_cancel: TButton
            Left = 573
            Top = 118
            Width = 43
            Height = 25
            Caption = #21462#28040
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btn_p_cancelClick
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #35774#22791#20449#24687
      ImageIndex = 1
      object DBGridDev: TDBGrid
        Left = 2
        Top = 1
        Width = 855
        Height = 512
        Hint = #28857#20987#40736#26631#21491#38190#36827#34892#31649#29702#65281
        DataSource = DSDev
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentColor = True
        ParentFont = False
        PopupMenu = pMenu_dev
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DevType'
            Title.Alignment = taCenter
            Title.Caption = #35774#22791#31867#22411
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DevNO'
            Title.Alignment = taCenter
            Title.Caption = #35774#22791#21495#30721
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AddrName'
            Title.Alignment = taCenter
            Title.Caption = #35774#22791#22320#22336
            Width = 235
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AddrNO'
            Title.Caption = #27004#26635#32534#30721
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IP'
            Title.Alignment = taCenter
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #22791#27880
            Width = 210
            Visible = True
          end>
      end
      object GroupBox34: TGroupBox
        Left = 0
        Top = 508
        Width = 857
        Height = 60
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label7: TLabel
          Left = 121
          Top = 25
          Width = 32
          Height = 16
          Caption = #31867#22411
        end
        object Label46: TLabel
          Left = 330
          Top = 25
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = #35774#22791#21495#30721
        end
        object cmbDevType: TComboBox
          Left = 159
          Top = 20
          Width = 137
          Height = 24
          BevelKind = bkSoft
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            #31649#29702#26426
            #20027#26426
            #21103#20027#26426
            #20998#26426
            #22260#22681#26426)
        end
        object edit_DevNO: TEdit
          Left = 398
          Top = 20
          Width = 121
          Height = 24
          BevelKind = bkSoft
          BorderStyle = bsNone
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 1
        end
        object btn_DevQry: TButton
          Left = 606
          Top = 20
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = btn_DevQryClick
        end
        object btn_DevCL: TButton
          Left = 735
          Top = 21
          Width = 75
          Height = 25
          Caption = #28165#38500
          TabOrder = 3
          OnClick = btn_DevCLClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #38376#31105#31649#29702
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = -5
        Top = -1
        Width = 871
        Height = 575
        ActivePage = TabSheet8
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = #19979#36733#21345
          object GroupBox42: TGroupBox
            Left = 2
            Top = -1
            Width = 853
            Height = 560
            TabOrder = 0
            object btn_previous: TSpeedButton
              Left = 1
              Top = 7
              Width = 65
              Height = 25
              Caption = #19978#19968#27493
              Enabled = False
              Flat = True
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #24188#22278
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              OnClick = btn_previousClick
            end
            object btn_next: TSpeedButton
              Left = 787
              Top = 7
              Width = 65
              Height = 25
              Caption = #19979#19968#27493
              Flat = True
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #24188#22278
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              OnClick = btn_nextClick
            end
            object Label59: TLabel
              Left = 67
              Top = 23
              Width = 720
              Height = 16
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------'
            end
            object panel_device: TPanel
              Left = 3
              Top = 70
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 0
              Visible = False
              object Label60: TLabel
                Left = 216
                Top = 3
                Width = 117
                Height = 27
                Caption = '2.'#36873#25321#35774#22791#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label61: TLabel
                Left = 344
                Top = 3
                Width = 40
                Height = 27
                Caption = #20027#26426
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label62: TLabel
                Left = 494
                Top = 3
                Width = 40
                Height = 27
                Caption = #20998#26426
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 634
                Top = 10
                Width = 33
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = #23646#24615
                Visible = False
              end
              object editUnitMac0: TEdit
                Left = 391
                Top = 1
                Width = 88
                Height = 29
                Hint = #21452#20987#36873#25321#35774#22791#65281
                BevelKind = bkSoft
                BorderStyle = bsNone
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 4
                ParentFont = False
                TabOrder = 0
                OnDblClick = editUnitMac0DblClick
              end
              object editUserMac0: TEdit
                Left = 541
                Top = 1
                Width = 88
                Height = 29
                BevelKind = bkSoft
                BorderStyle = bsNone
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 4
                ParentFont = False
                TabOrder = 1
                OnExit = editUserMac0Exit
              end
              object editUser60: TEdit
                Left = 669
                Top = 4
                Width = 60
                Height = 23
                BevelKind = bkSoft
                BorderStyle = bsNone
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = [fsBold]
                ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                TabOrder = 2
                Visible = False
              end
            end
            object panel_cardtype: TPanel
              Left = 3
              Top = 36
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 1
              object Label63: TLabel
                Left = 271
                Top = 3
                Width = 137
                Height = 27
                Caption = '1.'#36873#25321#21345#31867#22411#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object cbbCardType0: TComboBox
                Left = 420
                Top = 3
                Width = 155
                Height = 27
                BevelKind = bkSoft
                Style = csDropDownList
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ItemHeight = 19
                ParentFont = False
                TabOrder = 0
                OnChange = c1Change
                Items.Strings = (
                  #20303#25143#21345
                  #29289#19994#21345
                  #31995#32479#21345
                  #24033#26356#21345)
              end
            end
            object panel_batch: TPanel
              Left = 3
              Top = 104
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 2
              Visible = False
              object Label64: TLabel
                Left = 276
                Top = 3
                Width = 157
                Height = 27
                Caption = '3.'#26159#21542#25209#37327#27880#20876#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object ckbBatch0: TCheckBox
                Left = 438
                Top = 9
                Width = 120
                Height = 17
                BiDiMode = bdLeftToRight
                Caption = #25209#37327#27880#20876
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object SpinEdit1: TSpinEdit
              Left = 76
              Top = 10
              Width = 41
              Height = 37
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = #24494#36719#38597#40657
              Font.Style = [fsBold]
              MaxValue = 0
              MinValue = 0
              ParentFont = False
              TabOrder = 3
              Value = 0
              Visible = False
              OnChange = SpinEdit1Change
            end
            object panel_wall: TPanel
              Left = 3
              Top = 138
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 4
              Visible = False
              object Label65: TLabel
                Left = 330
                Top = 3
                Width = 137
                Height = 27
                Caption = '4.'#36873#25321#22260#22681#26426#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
            end
            object panel_property: TPanel
              Left = 3
              Top = 172
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 5
              Visible = False
              object Label66: TLabel
                Left = 306
                Top = 3
                Width = 177
                Height = 27
                Caption = '5.'#36873#25321#29289#19994#21345#20027#26426#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
            end
            object panel_end: TPanel
              Left = 3
              Top = 208
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 6
              Visible = False
              object Label67: TLabel
                Left = 264
                Top = 3
                Width = 250
                Height = 27
                Caption = '6.'#23548#20837#24453#19979#36733#30340#21345'-->'#19979#36733#21345
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
            end
            object GroupBox10: TGroupBox
              Left = 730
              Top = 327
              Width = 99
              Height = 65
              TabOrder = 7
              Visible = False
              object btn_RegOK: TBitBtn
                Left = 15
                Top = 26
                Width = 73
                Height = 25
                Caption = #30830#23450
                TabOrder = 0
                OnClick = btn_RegOKClick
              end
            end
            object PageControl3: TPageControl
              Left = 145
              Top = 112
              Width = 569
              Height = 395
              ActivePage = TabSheet13
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              Visible = False
              object TabSheet13: TTabSheet
                Caption = #25805#20316#21345
                object DBGrid1: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 561
                  Height = 337
                  Hint = #21452#20987#25805#20316#65292#21487#20197#28155#21152#21345#65281
                  Ctl3D = False
                  DataSource = DSRegCards
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  ParentColor = True
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -13
                  TitleFont.Name = #24494#36719#38597#40657
                  TitleFont.Style = []
                  OnDblClick = DBGrid1DblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'ID'
                      Visible = False
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'CardType'
                      Title.Alignment = taCenter
                      Title.Caption = #21345#31867#22411
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'CardNO'
                      Title.Alignment = taCenter
                      Title.Caption = #21345#21495
                      Width = 150
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CardHex'
                      Visible = False
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'unitMac'
                      Title.Alignment = taCenter
                      Title.Caption = #20027#26426
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'userMac'
                      Title.Alignment = taCenter
                      Title.Caption = #20998#26426
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'user6'
                      Title.Alignment = taCenter
                      Title.Caption = #23646#24615
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'cmdStr'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'sent'
                      Visible = False
                    end>
                end
                object btn_RegImport: TButton
                  Left = 18
                  Top = 351
                  Width = 167
                  Height = 25
                  Caption = #23548#20837'Excel'#34920#26684#25968#25454
                  TabOrder = 1
                  OnClick = btn_RegImportClick
                end
                object btn_RegDel: TButton
                  Left = 236
                  Top = 351
                  Width = 75
                  Height = 25
                  Caption = #21024#38500
                  TabOrder = 2
                  OnClick = btn_RegDelClick
                end
                object btn_RegClear: TButton
                  Left = 323
                  Top = 351
                  Width = 75
                  Height = 25
                  Caption = #28165#38500
                  TabOrder = 3
                  OnClick = btn_RegClearClick
                end
                object btn_RegDo: TBitBtn
                  Left = 457
                  Top = 348
                  Width = 89
                  Height = 30
                  Caption = #19979#36733#21345
                  TabOrder = 4
                  OnClick = btn_RegDoClick
                end
              end
              object TabSheet16: TTabSheet
                Caption = #22260#22681#26426
                ImageIndex = 3
                object clb_Dev0: TCheckListBox
                  Left = 2
                  Top = 1
                  Width = 559
                  Height = 385
                  OnClickCheck = clb_Dev0ClickCheck
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -20
                  Font.Name = #24494#36719#38597#40657
                  Font.Style = []
                  ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ItemHeight = 27
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object TabSheet7: TTabSheet
                Caption = #29289#19994#21345#20027#26426
                ImageIndex = 2
                object clb_UnitMac0: TCheckListBox
                  Left = 2
                  Top = 1
                  Width = 559
                  Height = 385
                  OnClickCheck = clb_UnitMac0ClickCheck
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -20
                  Font.Name = #24494#36719#38597#40657
                  Font.Style = []
                  ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ItemHeight = 27
                  ParentColor = True
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object memo_message0: TMemo
              Left = 2
              Top = 115
              Width = 140
              Height = 393
              Color = clWhite
              Ctl3D = False
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = #27880#38144#21345
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 2
            Top = -1
            Width = 853
            Height = 560
            TabOrder = 0
            object btn_previous1: TSpeedButton
              Left = 1
              Top = 7
              Width = 65
              Height = 25
              Caption = #19978#19968#27493
              Enabled = False
              Flat = True
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #24188#22278
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              OnClick = btn_previous1Click
            end
            object btn_next1: TSpeedButton
              Left = 787
              Top = 7
              Width = 65
              Height = 25
              Caption = #19979#19968#27493
              Flat = True
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #24188#22278
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              OnClick = btn_next1Click
            end
            object Label9: TLabel
              Left = 67
              Top = 23
              Width = 720
              Height = 16
              Caption = 
                '----------------------------------------------------------------' +
                '----------------------------------------------------------------' +
                '----------------------------------------------------'
            end
            object panel_device1: TPanel
              Left = 3
              Top = 36
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 0
              object Label10: TLabel
                Left = 216
                Top = 3
                Width = 117
                Height = 27
                Caption = '1.'#36873#25321#35774#22791#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label68: TLabel
                Left = 344
                Top = 3
                Width = 40
                Height = 27
                Caption = #20027#26426
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label69: TLabel
                Left = 494
                Top = 3
                Width = 40
                Height = 27
                Caption = #20998#26426
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
              object Label70: TLabel
                Left = 634
                Top = 10
                Width = 33
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = #23646#24615
                Visible = False
              end
              object editUnitMac1: TEdit
                Left = 391
                Top = 1
                Width = 88
                Height = 29
                Hint = #21452#20987#36873#25321#35774#22791#65281
                BevelKind = bkSoft
                BorderStyle = bsNone
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 4
                ParentFont = False
                TabOrder = 0
                OnDblClick = editUnitMac1DblClick
              end
              object editUserMac1: TEdit
                Left = 541
                Top = 1
                Width = 88
                Height = 29
                BevelKind = bkSoft
                BorderStyle = bsNone
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 4
                ParentFont = False
                TabOrder = 1
                OnExit = editUserMac0Exit
              end
              object editUser61: TEdit
                Left = 669
                Top = 4
                Width = 60
                Height = 23
                BevelKind = bkSoft
                BorderStyle = bsNone
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = [fsBold]
                ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                TabOrder = 2
                Visible = False
              end
              object btn_ClearOK: TBitBtn
                Left = 647
                Top = 2
                Width = 73
                Height = 25
                Caption = #28165#38500#21345
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btn_ClearOK1Click
              end
            end
            object SpinEdit2: TSpinEdit
              Left = 76
              Top = 10
              Width = 41
              Height = 37
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -20
              Font.Name = #24494#36719#38597#40657
              Font.Style = [fsBold]
              MaxValue = 0
              MinValue = 0
              ParentFont = False
              TabOrder = 1
              Value = 0
              Visible = False
              OnChange = SpinEdit2Change
            end
            object panel_wall1: TPanel
              Left = 3
              Top = 70
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 2
              Visible = False
              object Label73: TLabel
                Left = 309
                Top = 3
                Width = 237
                Height = 27
                Caption = '2.'#36873#25321#38656#35201#27880#38144#30340#22260#22681#26426#65306
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
            end
            object panel_end1: TPanel
              Left = 3
              Top = 104
              Width = 849
              Height = 33
              Color = clBtnHighlight
              ParentBackground = False
              TabOrder = 3
              Visible = False
              object Label75: TLabel
                Left = 295
                Top = 3
                Width = 250
                Height = 27
                Caption = '3.'#23548#20837#24453#27880#38144#30340#21345'-->'#27880#38144#21345
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = #24494#36719#38597#40657
                Font.Style = []
                ParentFont = False
              end
            end
            object memo_message1: TMemo
              Left = 2
              Top = 115
              Width = 140
              Height = 393
              Color = clWhite
              Ctl3D = False
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object PageControl4: TPageControl
              Left = 145
              Top = 112
              Width = 569
              Height = 395
              ActivePage = TabSheet14
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Visible = False
              object TabSheet14: TTabSheet
                Caption = #25805#20316#21345
                object DBGrid2: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 561
                  Height = 337
                  Hint = #21452#20987#25805#20316#65292#21487#20197#28155#21152#21345#65281
                  Ctl3D = False
                  DataSource = DSCancelCards
                  ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  ParentColor = True
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -13
                  TitleFont.Name = #24494#36719#38597#40657
                  TitleFont.Style = []
                  OnDblClick = DBGrid2DblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'ID'
                      Visible = False
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'CardType'
                      Title.Alignment = taCenter
                      Title.Caption = #21345#31867#22411
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'CardNO'
                      Title.Alignment = taCenter
                      Title.Caption = #21345#21495
                      Width = 150
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CardHex'
                      Visible = False
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'unitMac'
                      Title.Alignment = taCenter
                      Title.Caption = #20027#26426
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'userMac'
                      Title.Alignment = taCenter
                      Title.Caption = #20998#26426
                      Width = 120
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'user6'
                      Title.Alignment = taCenter
                      Title.Caption = #23646#24615
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'cmdStr'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'sent'
                      Visible = False
                    end>
                end
                object btn_CancelImport: TButton
                  Left = 18
                  Top = 351
                  Width = 167
                  Height = 25
                  Caption = #23548#20837'Excel'#34920#26684#25968#25454
                  TabOrder = 1
                  OnClick = btn_CancelImportClick
                end
                object btn_CancelDel: TButton
                  Left = 236
                  Top = 351
                  Width = 75
                  Height = 25
                  Caption = #21024#38500
                  TabOrder = 2
                  OnClick = btn_CancelDelClick
                end
                object btn_CancelClear: TButton
                  Left = 323
                  Top = 351
                  Width = 75
                  Height = 25
                  Caption = #28165#38500
                  TabOrder = 3
                  OnClick = btn_CancelClearClick
                end
                object btn_CancelDo: TBitBtn
                  Left = 457
                  Top = 348
                  Width = 89
                  Height = 30
                  Caption = #27880#38144#21345
                  TabOrder = 4
                  OnClick = btn_CancelDoClick
                end
              end
              object TabSheet15: TTabSheet
                Caption = #22260#22681#26426
                ImageIndex = 3
                object clb_Dev1: TCheckListBox
                  Left = 2
                  Top = 1
                  Width = 559
                  Height = 385
                  OnClickCheck = clb_Dev1ClickCheck
                  Color = clWhite
                  Ctl3D = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -20
                  Font.Name = #24494#36719#38597#40657
                  Font.Style = []
                  ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                  ItemHeight = 27
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object btn_CancelOK: TBitBtn
              Left = 751
              Top = 289
              Width = 73
              Height = 25
              Caption = #30830#23450
              TabOrder = 6
              Visible = False
              OnClick = btn_CancelOKClick
            end
            object GroupBox37: TGroupBox
              Left = 724
              Top = 329
              Width = 121
              Height = 65
              TabOrder = 7
              Visible = False
              object Button1: TButton
                Left = 29
                Top = 26
                Width = 66
                Height = 25
                Caption = #21345#25346#22833
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #25552#21462#21345
          ImageIndex = 2
          object Label15: TLabel
            Left = 107
            Top = 40
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #20027#26426
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 219
            Top = 40
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #20998#26426
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 331
            Top = 40
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #25968#37327
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 219
            Top = 1
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #23646#24615
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label2: TLabel
            Left = 8
            Top = 40
            Width = 96
            Height = 21
            Caption = #35831#36873#25321#35774#22791#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 564
            Top = 462
            Width = 24
            Height = 16
            Caption = #20998#26426
            Visible = False
          end
          object editUnitMac2: TEdit
            Left = 146
            Top = 35
            Width = 60
            Height = 25
            Hint = #21452#20987#36873#25321#35774#22791#65281
            BevelKind = bkSoft
            BorderStyle = bsNone
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            MaxLength = 4
            ParentFont = False
            TabOrder = 0
            OnChange = editUnitMac2Change
            OnDblClick = editUnitMac2DblClick
          end
          object editUserMac2: TEdit
            Left = 257
            Top = 35
            Width = 60
            Height = 25
            BevelKind = bkSoft
            BorderStyle = bsNone
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            MaxLength = 4
            ParentFont = False
            TabOrder = 1
            OnChange = editUserMac2Change
          end
          object edt_Num: TEdit
            Left = 369
            Top = 35
            Width = 77
            Height = 25
            BevelKind = bkSoft
            BorderStyle = bsNone
            Color = clBtnFace
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 2
          end
          object btn_ReadOK: TBitBtn
            Left = 459
            Top = 35
            Width = 73
            Height = 25
            Caption = #25552#21462
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btn_ReadOKClick
          end
          object editUser62: TEdit
            Left = 257
            Top = -2
            Width = 60
            Height = 25
            BevelKind = bkSoft
            BorderStyle = bsNone
            Color = clBtnFace
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 4
            Visible = False
          end
          object btn_export: TBitBtn
            Left = 657
            Top = 35
            Width = 131
            Height = 25
            Caption = #23548#20986'Excel'#34920#26684
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btn_exportClick
          end
          object DBGridReadCards: TDBGrid
            Left = 2
            Top = 82
            Width = 543
            Height = 480
            DataSource = DSReadCards
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentColor = True
            ReadOnly = True
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardType'
                Title.Alignment = taCenter
                Title.Caption = #21345#31867#22411
                Width = 135
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardNO'
                Title.Alignment = taCenter
                Title.Caption = #21345#21495
                Width = 135
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardHex'
                Title.Alignment = taCenter
                Title.Caption = #21345'16'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'unitMac'
                Title.Alignment = taCenter
                Title.Caption = #20027#26426
                Width = 117
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'userMac'
                Title.Alignment = taCenter
                Title.Caption = #20998#26426
                Width = 117
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'user6'
                Title.Caption = #23646#24615
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Memo'
                Visible = False
              end>
          end
          object btn_ReadClear: TBitBtn
            Left = 558
            Top = 35
            Width = 75
            Height = 25
            Caption = #28165#38500
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = btn_ReadClearClick
          end
          object edit_User: TEdit
            Left = 601
            Top = 459
            Width = 102
            Height = 24
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 8
            Visible = False
          end
          object btn_ReadQry: TButton
            Left = 708
            Top = 455
            Width = 75
            Height = 25
            Caption = #26597#35810
            TabOrder = 9
            Visible = False
            OnClick = btn_ReadQryClick
          end
        end
        object TabSheet11: TTabSheet
          Caption = #28165#38500#21345
          ImageIndex = 3
          object gbDev3: TGroupBox
            Left = 191
            Top = 176
            Width = 504
            Height = 65
            Caption = #35831#36873#25321#35774#22791
            TabOrder = 0
            object Label18: TLabel
              Left = 8
              Top = 31
              Width = 78
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #20027#26426
            end
            object Label19: TLabel
              Left = 152
              Top = 31
              Width = 86
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #20998#26426
            end
            object Label20: TLabel
              Left = 304
              Top = 31
              Width = 41
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = #23646#24615
              Visible = False
            end
            object editUnitMac3: TEdit
              Left = 90
              Top = 28
              Width = 60
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 0
            end
            object editUserMac3: TEdit
              Left = 241
              Top = 28
              Width = 60
              Height = 23
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 1
            end
            object editUser63: TEdit
              Left = 347
              Top = 28
              Width = 60
              Height = 23
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 2
              Visible = False
            end
            object btn_ClearOK1: TBitBtn
              Left = 420
              Top = 25
              Width = 73
              Height = 25
              Caption = #28165#38500
              TabOrder = 3
              OnClick = btn_ClearOK1Click
            end
          end
        end
        object TabSheet17: TTabSheet
          Caption = #21345#20013#24515
          ImageIndex = 4
          object Label54: TLabel
            Left = 625
            Top = 67
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #25968#37327
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 17
            Top = 67
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
          object Label14: TLabel
            Left = 179
            Top = 67
            Width = 32
            Height = 21
            Alignment = taRightJustify
            Caption = #21345#21495
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object spBtn_check: TSpeedButton
            Left = 15
            Top = 15
            Width = 105
            Height = 30
            Caption = #26377#25928#26399#26816#39564
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            OnClick = spBtn_checkClick
          end
          object SpeedButton1: TSpeedButton
            Left = 730
            Top = 15
            Width = 112
            Height = 30
            Caption = #23548#20986'Excel'#34920#26684
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object Label72: TLabel
            Left = 135
            Top = 19
            Width = 112
            Height = 21
            Caption = #33258#21160#26816#39564#38388#38548#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 336
            Top = 15
            Width = 105
            Height = 30
            Caption = #24320#21551#33258#21160#26816#39564
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 456
            Top = 15
            Width = 105
            Height = 30
            Caption = #20851#38381#33258#21160#26816#39564
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton3Click
          end
          object edt_amount: TEdit
            Left = 662
            Top = 62
            Width = 91
            Height = 29
            BevelKind = bkSoft
            BorderStyle = bsNone
            Color = clBtnFace
            Enabled = False
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 0
          end
          object btn_refresh: TButton
            Left = 767
            Top = 62
            Width = 75
            Height = 25
            Caption = #21047#26032
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btn_refreshClick
          end
          object DBGridCardsCenter: TDBGrid
            Left = 2
            Top = 106
            Width = 855
            Height = 453
            Color = clWhite
            DataSource = DSCard
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PersonName'
                Title.Alignment = taCenter
                Title.Caption = #25345#21345#20154
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardType'
                Title.Alignment = taCenter
                Title.Caption = #21345#31867#22411
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardNO'
                Title.Alignment = taCenter
                Title.Caption = #21345#21495
                Width = 120
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardState'
                Title.Alignment = taCenter
                Title.Caption = #21345#29366#24577
                Width = 65
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardHex'
                Title.Alignment = taCenter
                Title.Caption = #21345'16'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'unitMac'
                Title.Alignment = taCenter
                Title.Caption = #20027#26426
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'userMac'
                Title.Alignment = taCenter
                Title.Caption = #20998#26426
                Width = 90
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'WallNO'
                Title.Alignment = taCenter
                Title.Caption = #22260#22681#26426
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'user6'
                Title.Caption = #23646#24615
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CardMemo'
                Title.Alignment = taCenter
                Title.Caption = #26399#38480
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ValidTime'
                Title.Alignment = taCenter
                Title.Caption = #26377#25928#26102#38388
                Width = 175
                Visible = True
              end>
          end
          object ComboBox3: TComboBox
            Left = 55
            Top = 62
            Width = 99
            Height = 29
            BevelKind = bkSoft
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 21
            ParentFont = False
            TabOrder = 3
            Items.Strings = (
              #20303#25143#21345
              #29289#19994#21345
              #31995#32479#21345
              #24033#26356#21345)
          end
          object Edit2: TEdit
            Left = 216
            Top = 62
            Width = 102
            Height = 29
            BevelKind = bkSoft
            BorderStyle = bsNone
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 4
          end
          object BitBtn19: TBitBtn
            Left = 337
            Top = 62
            Width = 75
            Height = 25
            Caption = #26597#35810
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BitBtn19Click
          end
          object BitBtn6: TBitBtn
            Left = 426
            Top = 62
            Width = 75
            Height = 25
            Caption = #21024#38500
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BitBtn6Click
          end
          object BitBtn1: TBitBtn
            Left = 517
            Top = 62
            Width = 75
            Height = 25
            Caption = #28165#38500
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BitBtn1Click
          end
          object cmb_interval: TComboBox
            Left = 247
            Top = 15
            Width = 74
            Height = 29
            BevelKind = bkSoft
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 21
            ParentFont = False
            TabOrder = 8
            Items.Strings = (
              '1'#23567#26102
              '2'#23567#26102
              '3'#23567#26102
              '4'#23567#26102
              '5'#23567#26102
              '6'#23567#26102)
          end
        end
        object TabSheet18: TTabSheet
          Caption = #21457#21345#22120
          ImageIndex = 5
          object mm_receivecard: TMemo
            Left = 2
            Top = 392
            Width = 785
            Height = 41
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
            Visible = False
            OnChange = mm_receivecardChange
          end
          object Memo4: TMemo
            Left = 432
            Top = 160
            Width = 185
            Height = 217
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 1
            Visible = False
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 109
            Width = 425
            Height = 273
            TabOrder = 2
            object Label37: TLabel
              Left = 11
              Top = 21
              Width = 64
              Height = 21
              Alignment = taRightJustify
              Caption = #36890#20449#31471#21475
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 11
              Top = 79
              Width = 32
              Height = 21
              Caption = #20027#26426
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 11
              Top = 118
              Width = 32
              Height = 21
              Caption = #20998#26426
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 11
              Top = 158
              Width = 48
              Height = 21
              Caption = #22260#22681#26426
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 11
              Top = 197
              Width = 32
              Height = 21
              Caption = #21345#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 237
              Top = 56
              Width = 80
              Height = 21
              Caption = #21382#21490#35760#24405#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object cmbPort1: TComboBox
              Left = 90
              Top = 20
              Width = 129
              Height = 24
              BevelKind = bkSoft
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 16
              TabOrder = 0
            end
            object btn_connect1: TBitBtn
              Left = 235
              Top = 18
              Width = 80
              Height = 25
              Caption = #36830#25509
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btn_connect1Click
            end
            object btn_disconnect1: TBitBtn
              Left = 329
              Top = 18
              Width = 89
              Height = 25
              Caption = #26029#24320
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btn_disconnect1Click
            end
            object edt_UnitMac: TEdit
              Left = 90
              Top = 78
              Width = 120
              Height = 23
              Hint = #21452#20987#36873#25321#35774#22791#65281
              BevelKind = bkSoft
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              MaxLength = 4
              ParentFont = False
              TabOrder = 3
              OnDblClick = edt_UnitMacDblClick
            end
            object edt_UserMac: TEdit
              Left = 90
              Top = 117
              Width = 120
              Height = 23
              BevelKind = bkSoft
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              MaxLength = 4
              ParentFont = False
              TabOrder = 4
            end
            object edt_WallNo: TEdit
              Left = 90
              Top = 157
              Width = 120
              Height = 23
              BevelKind = bkSoft
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              MaxLength = 4
              ParentFont = False
              TabOrder = 5
            end
            object edt_CardNO1: TEdit
              Left = 90
              Top = 196
              Width = 120
              Height = 24
              BevelKind = bkSoft
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 6
            end
            object btn_CardSender: TButton
              Left = 10
              Top = 237
              Width = 75
              Height = 25
              Caption = #21457#21345
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Visible = False
              OnClick = btn_CardSenderClick
            end
            object btn_CardReg: TButton
              Left = 112
              Top = 237
              Width = 75
              Height = 25
              Caption = #19979#36733#21345
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btn_CardRegClick
            end
            object mm_cards: TMemo
              Left = 237
              Top = 79
              Width = 182
              Height = 189
              BevelKind = bkSoft
              BorderStyle = bsNone
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ScrollBars = ssVertical
              TabOrder = 9
            end
          end
        end
        object TabSheet19: TTabSheet
          Caption = #20889#21345#22120
          ImageIndex = 6
          object mm_Rcv: TMemo
            Left = 5
            Top = 17
            Width = 790
            Height = 80
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
            Visible = False
            OnChange = mm_RcvChange
          end
          object GroupBox46: TGroupBox
            Left = 2
            Top = 109
            Width = 428
            Height = 371
            TabOrder = 1
            object Label38: TLabel
              Left = 10
              Top = 21
              Width = 64
              Height = 21
              Alignment = taRightJustify
              Caption = #36890#20449#31471#21475
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 10
              Top = 83
              Width = 48
              Height = 21
              Caption = #21345#31867#22411
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 10
              Top = 131
              Width = 32
              Height = 21
              Caption = #26399#38480
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 10
              Top = 179
              Width = 32
              Height = 21
              Caption = #21345#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 237
              Top = 56
              Width = 80
              Height = 21
              Caption = #35774#22791#21495#30721#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 237
              Top = 218
              Width = 64
              Height = 21
              Caption = #21345#29366#24577#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
            end
            object cmbPort2: TComboBox
              Left = 80
              Top = 20
              Width = 138
              Height = 24
              BevelKind = bkSoft
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 16
              TabOrder = 0
            end
            object btn_connect2: TBitBtn
              Left = 235
              Top = 18
              Width = 81
              Height = 25
              Caption = #36830#25509
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btn_connect2Click
            end
            object btn_disconnect2: TBitBtn
              Left = 329
              Top = 18
              Width = 89
              Height = 25
              Caption = #26029#24320
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btn_disconnect2Click
            end
            object cmbCardType: TComboBox
              Left = 81
              Top = 82
              Width = 129
              Height = 24
              BevelKind = bkSoft
              Style = csDropDownList
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ItemHeight = 16
              TabOrder = 3
              Items.Strings = (
                #20303#25143#21345
                #29289#19994#21345
                #24033#26356#21345)
            end
            object dt1: TDateTimePicker
              Left = 81
              Top = 127
              Width = 129
              Height = 29
              Date = 0.687707245371711900
              Time = 0.687707245371711900
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 4
            end
            object edt_CardNO2: TEdit
              Left = 81
              Top = 178
              Width = 129
              Height = 24
              Hint = #22238#36710#35835#21462
              BevelKind = bkSoft
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              ParentFont = False
              TabOrder = 5
              OnKeyDown = edt_CardNO2KeyDown
            end
            object mm_dev: TMemo
              Left = 237
              Top = 79
              Width = 183
              Height = 130
              BevelKind = bkSoft
              BorderStyle = bsNone
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              MaxLength = -1
              ScrollBars = ssVertical
              TabOrder = 6
            end
            object btn_ReadCards: TBitBtn
              Left = 10
              Top = 233
              Width = 90
              Height = 25
              Caption = #35835#21462#21345#21495
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = btn_ReadCardsClick
            end
            object btn_Register: TBitBtn
              Left = 118
              Top = 233
              Width = 90
              Height = 25
              Caption = #19979#36733#21345
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btn_RegisterClick
            end
            object btn_Cancel: TBitBtn
              Left = 118
              Top = 283
              Width = 90
              Height = 25
              Caption = #27880#38144#21345
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnClick = btn_CancelClick
            end
            object btn_EditTime: TBitBtn
              Left = 10
              Top = 283
              Width = 90
              Height = 25
              Caption = #20462#25913#26102#38388
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnClick = btn_EditTimeClick
            end
            object btn_CardState: TBitBtn
              Left = 118
              Top = 333
              Width = 90
              Height = 25
              Caption = #21345#29366#24577
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnClick = btn_CardStateClick
            end
            object btn_Restore: TBitBtn
              Left = 10
              Top = 333
              Width = 90
              Height = 25
              Caption = #36824#21407#21345
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36719#38597#40657
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = btn_RestoreClick
            end
            object mm_state: TMemo
              Left = 237
              Top = 239
              Width = 183
              Height = 122
              BevelKind = bkSoft
              BorderStyle = bsNone
              Enabled = False
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              MaxLength = -1
              ScrollBars = ssVertical
              TabOrder = 13
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #25253#35686#20013#24515
      ImageIndex = 3
      object DBGridAlarmRec: TDBGrid
        Left = 2
        Top = 1
        Width = 855
        Height = 506
        Hint = #21452#20987#25805#20316#65292#21487#20197#25913#21464#22788#29702#24773#20917#65281
        DataSource = DSAlarm
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentColor = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridAlarmRecCellClick
        OnDrawColumnCell = DBGridAlarmRecDrawColumnCell
        OnDblClick = DBGridAlarmRecDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AlarmType'
            Title.Alignment = taCenter
            Title.Caption = #25253#35686#31867#22411
            Width = 115
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AddrName'
            Title.Alignment = taCenter
            Title.Caption = #35774#22791#22320#22336
            Width = 145
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AlarmStatus'
            Title.Alignment = taCenter
            Title.Caption = #29366#24577
            Width = 115
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AlarmTime'
            Title.Alignment = taCenter
            Title.Caption = #25253#35686#26102#38388
            Width = 155
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AlarmText'
            Title.Alignment = taCenter
            Title.Caption = #25253#35686#20869#23481
            Width = 165
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AlarmSolved'
            Title.Alignment = taCenter
            Title.Caption = #22788#29702#24773#20917
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Visible = False
          end>
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 505
        Width = 857
        Height = 66
        TabOrder = 1
        object btn_AlarmQuery: TBitBtn
          Left = 222
          Top = 23
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 0
          OnClick = btn_AlarmQueryClick
        end
        object btn_AlarmRefresh: TBitBtn
          Left = 322
          Top = 23
          Width = 75
          Height = 25
          Caption = #21047#26032
          TabOrder = 1
          OnClick = btn_AlarmRefreshClick
        end
        object btn_AlarmDel: TBitBtn
          Left = 422
          Top = 23
          Width = 75
          Height = 25
          Caption = #21024#38500
          TabOrder = 2
          OnClick = btn_AlarmDelClick
        end
        object btn_AlarmClear: TBitBtn
          Left = 522
          Top = 23
          Width = 75
          Height = 25
          Caption = #28165#38500
          TabOrder = 3
          OnClick = btn_AlarmClearClick
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #21047#21345#35760#24405
      ImageIndex = 4
      object DBGridCardRec: TDBGrid
        Left = 2
        Top = 1
        Width = 855
        Height = 506
        DataSource = DSCardRec
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentColor = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridCardRecDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CardType'
            Title.Alignment = taCenter
            Title.Caption = #21345#31867#22411
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CardNO'
            Title.Alignment = taCenter
            Title.Caption = #21345#21495
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RecDev'
            Title.Alignment = taCenter
            Title.Caption = #21047#21345#28857
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RecTime'
            Title.Alignment = taCenter
            Title.Caption = #21047#21345#26102#38388
            Width = 235
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Screenshot'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #25235#25293#22270#20687
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Caption = #22791#27880
            Visible = False
          end>
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 505
        Width = 857
        Height = 66
        TabOrder = 1
        object btn_CardRecQuery: TBitBtn
          Left = 222
          Top = 23
          Width = 75
          Height = 25
          Caption = #26597#35810
          TabOrder = 0
          OnClick = btn_CardRecQueryClick
        end
        object btn_CardRecRefresh: TBitBtn
          Left = 322
          Top = 23
          Width = 75
          Height = 25
          Caption = #21047#26032
          TabOrder = 1
          OnClick = btn_CardRecRefreshClick
        end
        object btn_CardRecDel: TBitBtn
          Left = 422
          Top = 23
          Width = 75
          Height = 25
          Caption = #21024#38500
          TabOrder = 2
          OnClick = btn_CardRecDelClick
        end
        object btn_CardRecClear: TBitBtn
          Left = 522
          Top = 23
          Width = 75
          Height = 25
          Caption = #28165#38500
          TabOrder = 3
          OnClick = btn_CardRecClearClick
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #35774#32622
      ImageIndex = 5
      object btn_more: TButton
        Left = 760
        Top = 15
        Width = 75
        Height = 25
        Caption = #39640#32423
        TabOrder = 0
        Visible = False
        OnClick = btn_moreClick
      end
      object GroupBox27: TGroupBox
        Left = 119
        Top = 171
        Width = 617
        Height = 230
        Caption = #29992#25143#31649#29702
        TabOrder = 1
        Visible = False
        object DBGridUser: TDBGrid
          Left = 8
          Top = 22
          Width = 601
          Height = 201
          Hint = #28857#20987#40736#26631#21491#38190#36827#34892#31649#29702#65281
          DataSource = DSUser
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentColor = True
          PopupMenu = pMenu_user
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UserName'
              Title.Alignment = taCenter
              Title.Caption = #36134#21495#21517
              Width = 175
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UserPermission'
              Title.Alignment = taCenter
              Title.Caption = #36134#21495#26435#38480
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UserPassword'
              Title.Alignment = taCenter
              Title.Caption = #36134#21495#23494#30721
              Width = 185
              Visible = True
            end>
        end
      end
      object GroupBox33: TGroupBox
        Left = 289
        Top = 403
        Width = 278
        Height = 202
        Caption = #20010#20154#20013#24515
        TabOrder = 2
        object GroupBox36: TGroupBox
          Left = 7
          Top = 24
          Width = 265
          Height = 177
          TabOrder = 0
          object Label49: TLabel
            Left = 8
            Top = 80
            Width = 81
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = #29992#25143#21517#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object lab_UserName: TLabel
            Left = 96
            Top = 80
            Width = 8
            Height = 16
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn_EditPsw: TButton
            Left = 168
            Top = 76
            Width = 75
            Height = 25
            Caption = #32534#36753
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btn_EditPswClick
          end
        end
        object Panel_EditPsw: TPanel
          Left = 2
          Top = 23
          Width = 273
          Height = 177
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Label50: TLabel
            Left = 16
            Top = 58
            Width = 118
            Height = 14
            AutoSize = False
            Caption = #35831#36755#20837#26032#23494#30721#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 16
            Top = 98
            Width = 118
            Height = 14
            AutoSize = False
            Caption = #35831#30830#35748#26032#23494#30721#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 17
            Top = 18
            Width = 118
            Height = 14
            AutoSize = False
            Caption = #26032#29992#25143#21517#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object btn_PswBack: TButton
            Left = 148
            Top = 140
            Width = 75
            Height = 25
            Caption = #36820#22238
            TabOrder = 4
            OnClick = btn_PswBackClick
          end
          object edit_new: TEdit
            Left = 136
            Top = 53
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 1
          end
          object edit_confirmnew: TEdit
            Left = 136
            Top = 94
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 2
          end
          object btn_PswOK: TButton
            Left = 44
            Top = 140
            Width = 75
            Height = 25
            Caption = #30830#35748
            TabOrder = 3
            OnClick = btn_PswOKClick
          end
          object edt_name: TEdit
            Left = 136
            Top = 13
            Width = 121
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
        end
      end
      object btn_dock: TButton
        Left = 760
        Top = 206
        Width = 75
        Height = 25
        BiDiMode = bdLeftToRight
        Caption = #23545#25509
        ParentBiDiMode = False
        TabOrder = 3
        Visible = False
        OnClick = btn_dockClick
      end
      object btn_open: TBitBtn
        Left = 762
        Top = 251
        Width = 75
        Height = 25
        Caption = #25163#26426#24320#38145
        TabOrder = 4
        Visible = False
        OnClick = btn_openClick
      end
      object GroupBox41: TGroupBox
        Left = 119
        Top = -3
        Width = 617
        Height = 172
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object Label55: TLabel
          Left = 22
          Top = 21
          Width = 92
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = #36890#35759#23646#24615
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 354
          Top = 22
          Width = 116
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = #31649#29702#20013#24515#21495#30721
        end
        object cmb_compro: TComboBox
          Left = 117
          Top = 17
          Width = 170
          Height = 27
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 19
          TabOrder = 0
          OnChange = cmb_comproChange
          Items.Strings = (
            #37319#29992#20018#34892#21475'(RS-232)'#36890#35759
            #37319#29992#32593#32476'(TCP/IP'#21327#35758')'#36890#35759)
        end
        object PageControl6: TPageControl
          Left = 10
          Top = 52
          Width = 605
          Height = 117
          ActivePage = TabSheet26
          TabOrder = 1
          object TabSheet25: TTabSheet
            Caption = #20018#21475#36890#35759
            object GroupBox32: TGroupBox
              Left = 8
              Top = 13
              Width = 474
              Height = 81
              Caption = #36890#20449#36830#25509
              TabOrder = 0
              object Label6: TLabel
                Left = 24
                Top = 39
                Width = 65
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = #36890#20449#31471#21475
              end
              object cbb_port: TComboBox
                Left = 91
                Top = 35
                Width = 118
                Height = 27
                Hint = #36890#20449#31471#21475','#21487#36755#20837'!'
                ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ItemHeight = 19
                TabOrder = 0
              end
              object BitBtn24: TBitBtn
                Left = 257
                Top = 32
                Width = 89
                Height = 30
                Caption = #36830#25509
                TabOrder = 1
                OnClick = BitBtn24Click
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFF066A69
                  056968056969056969056969056969056A69056A69056969056A690569690569
                  69056968056969026867016766026867026867026867026867026867036867FF
                  FFFF026867016867036A69036A69026968026968026968026968026968026968
                  02696802696809716E09716E0A716E0A716E09706E09706D09706D09716E0971
                  6E066D6B0268670B6D6C066A690168676EFBD86EFBD86EFCD96FFCD96FFCD96E
                  FCD86EFCD96FFCD96FFCD96FFCD96FFCD96FFCD96FFBD96EFAD76DE8C767977A
                  68AB8D6DEFCE6EFBD856DABF076C6A0B6D6C066A6901686743FECF42FECF43FF
                  D043FFD043FFD043FFD043FECF43FECF43FECF43FECF43FDCF43FDCE43FDCE43
                  F2C54D87635F360A5B391047B38D44FBCD37DFB90167660B6D6C267D7D026C69
                  33FECC33FECC34FFCD34FFCD33FFCC34FFCC34FECC33FECA34FECB33FECA34FD
                  CB34FCCA35F6C53DA47C5C3C10653705593E133ABA9134FCCA29E0B7066C6B0B
                  6D6C267D7D026C6934FECC33FECC34FFCD34FFCC33FFCB34FECB34EEBF33D5A9
                  34D5AA33D5A935D4A935D3A83AAD8657461C6536045F3A0A428C6434F4C334FD
                  CB2AE0B7066C6B0B6D6C267E7C026C6934FECC31FDCA33FECB33FDCA32FCC933
                  EDBD3B7F5F4B45234D46224D4522504824504724573B14653604613404476F47
                  34E6B632FCC934FECB29E0B7066C6B0B6D6C257E7D026C6933FECC32FDCB33FE
                  CB33FCCA33F4C3388C6C54310D64340264330264330266350365340365350366
                  35034F4F2935D6A933FBC932FDCA33FECC29E0B7066D6B0B6D6C257E7D026C69
                  34FECC32FDCB34FDCA38F8C73EB18D5A412471451874471A74471A74471A7649
                  1C76491C75491B7346174C5B3F39F6C634FDCB32FDCB34FECC2AE1B8066C6B0B
                  6D6C257E7D026C6938FECD4BFDD062FCD464CAAD7F7B68A2876AAA8E73AC9176
                  AD9176AD9277AE9277AD9277AC9176A6896C847E6867D8BA5FFDD648FDCF38FF
                  CD29E0B8066D6B0B6D6C267E7D036C6A70FEDA83FEDE80D9C1808070A3896FA8
                  8D71A98D70A98D71A98D71AA8D71AA8D71A98C72A98C71A98D7295816C7BC0AB
                  89FEE181FEDE6EFFDA3DE1BC066C6B0B6D6C257D7D046C6A83FEDE82FDDD73C2
                  AA7E71609F8366A28466A28567A38566A38667A38667A48768A48668A38667A3
                  866895785E77AA9582FADB82FDDD83FFDF63E0C5076D6B0B6D6C257E7D046C6A
                  7CFEDD7BFCDB7AF5D46C9E888D71579C7F609C7E5E9D7D5F9D7E5F9D7E5E9F7F
                  5F9E7F5F9E7E5F9E7F6098795D728E7A79F2D27BFDDB7CFFDD63E1C5076D6B0B
                  6D6C257D7D046C6A77FEDB76FDDA72DBBC7A7F658E72547A6D578C6E53987756
                  9977569978569A7957997857997857987958856C546AA89075F9D776FEDB77FE
                  DC60E1C4076D6B0B6D6C257D7D036C6A6FFDD96AE8C76C84698A6D4B74896B66
                  D1B263847080634A916F4C926F4B94714E93714D93724F87674B6589746BEFCD
                  6EFDD96DFDD96FFFDA5AE1C3076D6B0B6D6C267D7D036C6A66F4D065997D8165
                  4475765765D6B468FCD665EAC75F977F795D438D6A458D69448D6A4584634464
                  7A6463E2C068FDD767FFD967FED867FFD853E1C2076C6B0B6D6C257D7D036C6A
                  59CCAC7468477768475FC19F60FCD460FDD561FAD25EBC9B735C3D82603C835F
                  3C835F3C636E565CD9B661FDD560FED660FFD760FED660FFD64DE1C0076D6B0B
                  6D6C267D7D036C6A55DDB85E886759B29058F5CC58FCD258FBD157D3AE686849
                  7A59345B7D605B644D5D5B4555C9A859FCD258FDD358FED459FED458FED359FE
                  D447E1BE076C6B0B6D6C267D7D036C6A53FED350F8CD51FCD051FDD152FDD151
                  E7BF5D7B5974522B5C7A5950E6BD4FDCB64DCAA953FCD153FED251FED251FED2
                  52FFD351FDD253FED342E1BD076C6B0B6D6C267D7D026C6A4BFED14AFCCF4AFE
                  D04AFCCF4BFDD050A37E6D4D255E654149D5AD4BFBCE4BFDD04CFCD04BFED24C
                  FED24BFED14AFED14BFED14AFDD04BFED13CE0BC076C6B0B6D6C267D7D026C69
                  44FECF43FECF42FECF43FCCD43FDCE48AB85566C4845C39B43F9CB43FCCE44FD
                  CF44FDCF43FECF44FED043FECF43FECF42FECF43FECF44FECF37E0BA066C6B0B
                  6D6C066A69026C693DFDCC3CFDCC3CFECD3DFECD3DFECD3CFCCB3DFACA3DFCCC
                  3DFDCD3DFECD3EFDCD3DFDCD3EFDCD3EFDCD3DFECD3DFECD3CFECD3CFDCC3DFD
                  CC30DCB6066C6A0B6D6C036867016968026B69026B69026B69026B69026B6902
                  6B69026B69026B69026B69026B69026B69026B69026B69026B69026B69026B69
                  026B69026B69026B69016A680B6D6C0B6D6CFFFFFF056A690469680469680469
                  6804696804696804696804696804696804696804696804696804696801676601
                  67660469680469680469680C6E6D0C6E6D056A69096C6BFFFFFF}
              end
              object BitBtn25: TBitBtn
                Left = 359
                Top = 32
                Width = 97
                Height = 30
                Caption = #26029#24320
                TabOrder = 2
                OnClick = BitBtn25Click
                Kind = bkAbort
              end
            end
            object GroupBox40: TGroupBox
              Left = 481
              Top = 13
              Width = 113
              Height = 81
              TabOrder = 1
              object btn_SaveClose0: TBitBtn
                Left = 12
                Top = 35
                Width = 89
                Height = 24
                Caption = #20445#23384
                TabOrder = 0
                OnClick = btn_SaveClose0Click
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
              object BitBtn3: TBitBtn
                Left = 119
                Top = 35
                Width = 89
                Height = 25
                Caption = #28165#31354#25968#25454
                TabOrder = 1
                Visible = False
                OnClick = btn_DataClearClick
              end
            end
          end
          object TabSheet26: TTabSheet
            Caption = #32593#32476#36890#35759
            ImageIndex = 1
            object GroupBox3: TGroupBox
              Left = 8
              Top = 13
              Width = 474
              Height = 81
              Caption = #36890#20449#36830#25509
              TabOrder = 0
              object Label56: TLabel
                Left = 11
                Top = 40
                Width = 80
                Height = 16
                Alignment = taRightJustify
                AutoSize = False
                Caption = #25509#25910#31471#21475
              end
              object Label57: TLabel
                Left = 185
                Top = 40
                Width = 65
                Height = 19
                Alignment = taRightJustify
                AutoSize = False
                Caption = #21457#36865#31471#21475
              end
              object edit_receive: TEdit
                Left = 95
                Top = 35
                Width = 80
                Height = 27
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 0
              end
              object edit_send: TEdit
                Left = 254
                Top = 35
                Width = 80
                Height = 27
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 1
              end
              object BitBtn2: TBitBtn
                Left = 370
                Top = 32
                Width = 89
                Height = 30
                Caption = #36830#25509
                TabOrder = 2
                OnClick = BitBtn2Click
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000FFFFFF066A69
                  056968056969056969056969056969056A69056A69056969056A690569690569
                  69056968056969026867016766026867026867026867026867026867036867FF
                  FFFF026867016867036A69036A69026968026968026968026968026968026968
                  02696802696809716E09716E0A716E0A716E09706E09706D09706D09716E0971
                  6E066D6B0268670B6D6C066A690168676EFBD86EFBD86EFCD96FFCD96FFCD96E
                  FCD86EFCD96FFCD96FFCD96FFCD96FFCD96FFCD96FFBD96EFAD76DE8C767977A
                  68AB8D6DEFCE6EFBD856DABF076C6A0B6D6C066A6901686743FECF42FECF43FF
                  D043FFD043FFD043FFD043FECF43FECF43FECF43FECF43FDCF43FDCE43FDCE43
                  F2C54D87635F360A5B391047B38D44FBCD37DFB90167660B6D6C267D7D026C69
                  33FECC33FECC34FFCD34FFCD33FFCC34FFCC34FECC33FECA34FECB33FECA34FD
                  CB34FCCA35F6C53DA47C5C3C10653705593E133ABA9134FCCA29E0B7066C6B0B
                  6D6C267D7D026C6934FECC33FECC34FFCD34FFCC33FFCB34FECB34EEBF33D5A9
                  34D5AA33D5A935D4A935D3A83AAD8657461C6536045F3A0A428C6434F4C334FD
                  CB2AE0B7066C6B0B6D6C267E7C026C6934FECC31FDCA33FECB33FDCA32FCC933
                  EDBD3B7F5F4B45234D46224D4522504824504724573B14653604613404476F47
                  34E6B632FCC934FECB29E0B7066C6B0B6D6C257E7D026C6933FECC32FDCB33FE
                  CB33FCCA33F4C3388C6C54310D64340264330264330266350365340365350366
                  35034F4F2935D6A933FBC932FDCA33FECC29E0B7066D6B0B6D6C257E7D026C69
                  34FECC32FDCB34FDCA38F8C73EB18D5A412471451874471A74471A74471A7649
                  1C76491C75491B7346174C5B3F39F6C634FDCB32FDCB34FECC2AE1B8066C6B0B
                  6D6C257E7D026C6938FECD4BFDD062FCD464CAAD7F7B68A2876AAA8E73AC9176
                  AD9176AD9277AE9277AD9277AC9176A6896C847E6867D8BA5FFDD648FDCF38FF
                  CD29E0B8066D6B0B6D6C267E7D036C6A70FEDA83FEDE80D9C1808070A3896FA8
                  8D71A98D70A98D71A98D71AA8D71AA8D71A98C72A98C71A98D7295816C7BC0AB
                  89FEE181FEDE6EFFDA3DE1BC066C6B0B6D6C257D7D046C6A83FEDE82FDDD73C2
                  AA7E71609F8366A28466A28567A38566A38667A38667A48768A48668A38667A3
                  866895785E77AA9582FADB82FDDD83FFDF63E0C5076D6B0B6D6C257E7D046C6A
                  7CFEDD7BFCDB7AF5D46C9E888D71579C7F609C7E5E9D7D5F9D7E5F9D7E5E9F7F
                  5F9E7F5F9E7E5F9E7F6098795D728E7A79F2D27BFDDB7CFFDD63E1C5076D6B0B
                  6D6C257D7D046C6A77FEDB76FDDA72DBBC7A7F658E72547A6D578C6E53987756
                  9977569978569A7957997857997857987958856C546AA89075F9D776FEDB77FE
                  DC60E1C4076D6B0B6D6C257D7D036C6A6FFDD96AE8C76C84698A6D4B74896B66
                  D1B263847080634A916F4C926F4B94714E93714D93724F87674B6589746BEFCD
                  6EFDD96DFDD96FFFDA5AE1C3076D6B0B6D6C267D7D036C6A66F4D065997D8165
                  4475765765D6B468FCD665EAC75F977F795D438D6A458D69448D6A4584634464
                  7A6463E2C068FDD767FFD967FED867FFD853E1C2076C6B0B6D6C257D7D036C6A
                  59CCAC7468477768475FC19F60FCD460FDD561FAD25EBC9B735C3D82603C835F
                  3C835F3C636E565CD9B661FDD560FED660FFD760FED660FFD64DE1C0076D6B0B
                  6D6C267D7D036C6A55DDB85E886759B29058F5CC58FCD258FBD157D3AE686849
                  7A59345B7D605B644D5D5B4555C9A859FCD258FDD358FED459FED458FED359FE
                  D447E1BE076C6B0B6D6C267D7D036C6A53FED350F8CD51FCD051FDD152FDD151
                  E7BF5D7B5974522B5C7A5950E6BD4FDCB64DCAA953FCD153FED251FED251FED2
                  52FFD351FDD253FED342E1BD076C6B0B6D6C267D7D026C6A4BFED14AFCCF4AFE
                  D04AFCCF4BFDD050A37E6D4D255E654149D5AD4BFBCE4BFDD04CFCD04BFED24C
                  FED24BFED14AFED14BFED14AFDD04BFED13CE0BC076C6B0B6D6C267D7D026C69
                  44FECF43FECF42FECF43FCCD43FDCE48AB85566C4845C39B43F9CB43FCCE44FD
                  CF44FDCF43FECF44FED043FECF43FECF42FECF43FECF44FECF37E0BA066C6B0B
                  6D6C066A69026C693DFDCC3CFDCC3CFECD3DFECD3DFECD3CFCCB3DFACA3DFCCC
                  3DFDCD3DFECD3EFDCD3DFDCD3EFDCD3EFDCD3DFECD3DFECD3CFECD3CFDCC3DFD
                  CC30DCB6066C6A0B6D6C036867016968026B69026B69026B69026B69026B6902
                  6B69026B69026B69026B69026B69026B69026B69026B69026B69026B69026B69
                  026B69026B69026B69016A680B6D6C0B6D6CFFFFFF056A690469680469680469
                  6804696804696804696804696804696804696804696804696804696801676601
                  67660469680469680469680C6E6D0C6E6D056A69096C6BFFFFFF}
              end
            end
            object GroupBox26: TGroupBox
              Left = 481
              Top = 13
              Width = 113
              Height = 81
              TabOrder = 1
              object btn_SaveClose1: TBitBtn
                Left = 12
                Top = 35
                Width = 89
                Height = 24
                Caption = #20445#23384
                TabOrder = 0
                OnClick = btn_SaveClose1Click
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
              object btn_DataClear: TBitBtn
                Left = 119
                Top = 35
                Width = 89
                Height = 25
                Caption = #28165#31354#25968#25454
                TabOrder = 1
                Visible = False
                OnClick = btn_DataClearClick
              end
            end
          end
        end
        object edit_center: TEdit
          Left = 474
          Top = 17
          Width = 113
          Height = 27
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 2
        end
      end
      object btn_record: TBitBtn
        Left = 760
        Top = 61
        Width = 75
        Height = 25
        Caption = #19979#21457#35760#24405
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
        OnClick = btn_recordClick
      end
    end
    object TabSheet20: TTabSheet
      Caption = #39640#32423
      ImageIndex = 8
      object btn_hide: TButton
        Left = 760
        Top = 15
        Width = 75
        Height = 25
        Caption = #38544#34255
        TabOrder = 0
        OnClick = btn_hideClick
      end
      object GroupBox28: TGroupBox
        Left = 52
        Top = 60
        Width = 760
        Height = 81
        Caption = #24453#21457#36865#25351#20196#65306
        TabOrder = 1
        object mmSendCmd: TMemo
          Left = 8
          Top = 16
          Width = 747
          Height = 61
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ScrollBars = ssVertical
          TabOrder = 0
          OnDblClick = mmSendCmdDblClick
        end
      end
      object GroupBox29: TGroupBox
        Left = 52
        Top = 156
        Width = 760
        Height = 110
        Caption = #24050#25509#25910#25351#20196#65306
        TabOrder = 2
        object mmRcvCmd: TMemo
          Left = 8
          Top = 16
          Width = 747
          Height = 89
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ScrollBars = ssVertical
          TabOrder = 0
          OnChange = mmRcvCmdChange
          OnDblClick = mmRcvCmdDblClick
        end
      end
      object GroupBox31: TGroupBox
        Left = 52
        Top = 284
        Width = 761
        Height = 121
        Caption = #25351#20196#65306
        TabOrder = 3
        object Memo1: TMemo
          Left = 8
          Top = 16
          Width = 747
          Height = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnDblClick = Memo1DblClick
        end
      end
      object GroupBox30: TGroupBox
        Left = 52
        Top = 420
        Width = 760
        Height = 105
        Caption = #25351#20196#29366#24577#65306
        TabOrder = 4
        object Memo2: TMemo
          Left = 8
          Top = 16
          Width = 747
          Height = 86
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnDblClick = Memo2DblClick
        end
      end
      object Memo5: TMemo
        Left = 240
        Top = 11
        Width = 505
        Height = 182
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 5
        Visible = False
      end
      object Memo3: TMemo
        Left = 389
        Top = 209
        Width = 431
        Height = 137
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
        Visible = False
      end
    end
    object TabSheet12: TTabSheet
      Caption = #27004#26635#21442#25968
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 7
      ParentFont = False
      object GroupBox13: TGroupBox
        Left = 8
        Top = 112
        Width = 185
        Height = 173
        Caption = #26635#21495
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 23
          Width = 105
          Height = 13
          AutoSize = False
          Caption = #32534#30721#20301#25968
        end
        object Label4: TLabel
          Left = 16
          Top = 100
          Width = 97
          Height = 13
          AutoSize = False
          Caption = #32534#30721#21517#31216
        end
        object Label5: TLabel
          Left = 16
          Top = 139
          Width = 113
          Height = 13
          AutoSize = False
          Caption = #32534#30721#39034#24207
        end
        object Label21: TLabel
          Left = 16
          Top = 62
          Width = 137
          Height = 13
          AutoSize = False
          Caption = #20174'                       '#21040'      '
        end
        object cmbBOrder: TComboBox
          Left = 128
          Top = 135
          Width = 41
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = '1'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object cmbBName: TComboBox
          Left = 112
          Top = 96
          Width = 57
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            #26635
            #24162
            #21495#27004
            '#'#27004)
        end
        object cmbBbit: TComboBox
          Left = 120
          Top = 19
          Width = 49
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 2
          Text = '1'
          OnChange = cmbBbitChange
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object seB1: TSpinEdit
          Left = 48
          Top = 57
          Width = 49
          Height = 22
          MaxValue = 998
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object seB2: TSpinEdit
          Left = 119
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 4
          Value = 99
        end
      end
      object GroupBox14: TGroupBox
        Left = 227
        Top = 112
        Width = 185
        Height = 173
        Caption = #21333#20803
        TabOrder = 1
        object Label22: TLabel
          Left = 16
          Top = 23
          Width = 105
          Height = 13
          AutoSize = False
          Caption = #32534#30721#20301#25968
        end
        object Label23: TLabel
          Left = 16
          Top = 100
          Width = 97
          Height = 13
          AutoSize = False
          Caption = #32534#30721#21517#31216
        end
        object Label24: TLabel
          Left = 16
          Top = 139
          Width = 113
          Height = 13
          AutoSize = False
          Caption = #32534#30721#39034#24207
        end
        object Label25: TLabel
          Left = 16
          Top = 62
          Width = 137
          Height = 13
          AutoSize = False
          Caption = #20174'                       '#21040'      '
        end
        object cmbUOrder: TComboBox
          Left = 128
          Top = 135
          Width = 41
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          ItemIndex = 1
          ParentFont = False
          TabOrder = 0
          Text = '2'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object cmbUName: TComboBox
          Left = 112
          Top = 96
          Width = 57
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            #21333#20803
            #26799
            #38376)
        end
        object cmbUbit: TComboBox
          Left = 120
          Top = 19
          Width = 49
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 2
          Text = '1'
          OnChange = cmbUbitChange
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object seU1: TSpinEdit
          Left = 47
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 998
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object seU2: TSpinEdit
          Left = 119
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 4
          Value = 99
        end
      end
      object GroupBox15: TGroupBox
        Left = 445
        Top = 112
        Width = 185
        Height = 173
        Caption = #23618#21495
        TabOrder = 2
        object Label26: TLabel
          Left = 16
          Top = 23
          Width = 105
          Height = 13
          AutoSize = False
          Caption = #32534#30721#20301#25968
        end
        object Label27: TLabel
          Left = 16
          Top = 100
          Width = 97
          Height = 13
          AutoSize = False
          Caption = #32534#30721#21517#31216
        end
        object Label28: TLabel
          Left = 16
          Top = 139
          Width = 113
          Height = 13
          AutoSize = False
          Caption = #32534#30721#39034#24207
        end
        object Label29: TLabel
          Left = 16
          Top = 62
          Width = 137
          Height = 13
          AutoSize = False
          Caption = #20174'                       '#21040'      '
        end
        object cmbFOrder: TComboBox
          Left = 128
          Top = 135
          Width = 41
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          ItemIndex = 2
          ParentFont = False
          TabOrder = 0
          Text = '3'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object cmbFName: TComboBox
          Left = 112
          Top = 96
          Width = 57
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            #27004
            #23618
            'F')
        end
        object cmbFbit: TComboBox
          Left = 120
          Top = 19
          Width = 49
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 2
          Text = '1'
          OnChange = cmbFbitChange
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object seF1: TSpinEdit
          Left = 47
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 998
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object seF2: TSpinEdit
          Left = 119
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 4
          Value = 99
        end
      end
      object GroupBox16: TGroupBox
        Left = 664
        Top = 112
        Width = 185
        Height = 173
        Caption = #25151#21495
        TabOrder = 3
        object Label30: TLabel
          Left = 16
          Top = 23
          Width = 105
          Height = 13
          AutoSize = False
          Caption = #32534#30721#20301#25968
        end
        object Label31: TLabel
          Left = 16
          Top = 100
          Width = 97
          Height = 13
          AutoSize = False
          Caption = #32534#30721#21517#31216
        end
        object Label32: TLabel
          Left = 16
          Top = 139
          Width = 113
          Height = 13
          AutoSize = False
          Caption = #32534#30721#39034#24207
        end
        object Label33: TLabel
          Left = 16
          Top = 62
          Width = 137
          Height = 13
          AutoSize = False
          Caption = #20174'                       '#21040'      '
        end
        object cmbHOrder: TComboBox
          Left = 128
          Top = 135
          Width = 41
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          ItemIndex = 3
          ParentFont = False
          TabOrder = 0
          Text = '4'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object cmbHName: TComboBox
          Left = 112
          Top = 96
          Width = 57
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            #23460)
        end
        object cmbHbit: TComboBox
          Left = 120
          Top = 19
          Width = 49
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 13
          TabOrder = 2
          Text = '1'
          OnChange = cmbHbitChange
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object seH1: TSpinEdit
          Left = 47
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 998
          MinValue = 1
          TabOrder = 3
          Value = 1
        end
        object seH2: TSpinEdit
          Left = 119
          Top = 57
          Width = 50
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 4
          Value = 99
        end
      end
      object GroupBox17: TGroupBox
        Left = 8
        Top = 296
        Width = 513
        Height = 113
        TabOrder = 4
        object Label34: TLabel
          Left = 16
          Top = 32
          Width = 33
          Height = 13
          AutoSize = False
          Caption = #26631#35782
        end
        object Label35: TLabel
          Left = 152
          Top = 32
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #35774#22791#21495
        end
        object Label36: TLabel
          Left = 16
          Top = 75
          Width = 33
          Height = 13
          AutoSize = False
          Caption = #21517#31216
        end
        object Edit11: TEdit
          Left = 46
          Top = 28
          Width = 100
          Height = 21
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit13: TEdit
          Left = 221
          Top = 28
          Width = 100
          Height = 21
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object ckbDev: TCheckBox
          Left = 374
          Top = 30
          Width = 120
          Height = 17
          Caption = #21516#26102#21021#22987#21270#35774#22791
          TabOrder = 2
        end
        object Edit14: TEdit
          Left = 46
          Top = 71
          Width = 443
          Height = 21
          Color = clBtnFace
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox18: TGroupBox
        Left = 520
        Top = 296
        Width = 329
        Height = 113
        TabOrder = 5
        object Button11: TButton
          Left = 42
          Top = 25
          Width = 95
          Height = 25
          Caption = #31034#20363
          TabOrder = 0
          OnClick = Button11Click
        end
        object Button13: TButton
          Left = 180
          Top = 25
          Width = 105
          Height = 25
          Caption = #28165#31354
          TabOrder = 1
          OnClick = Button13Click
        end
        object BitBtn17: TBitBtn
          Left = 42
          Top = 72
          Width = 95
          Height = 25
          Caption = #20445#23384
          TabOrder = 2
          OnClick = BitBtn17Click
        end
        object BitBtn18: TBitBtn
          Left = 180
          Top = 72
          Width = 105
          Height = 25
          Caption = #21021#22987#21270
          TabOrder = 3
          OnClick = BitBtn18Click
        end
      end
      object btn_AddrBack: TButton
        Left = 772
        Top = 55
        Width = 75
        Height = 25
        Caption = #36820#22238
        TabOrder = 6
        OnClick = btn_AddrBackClick
      end
    end
    object TabSheet22: TTabSheet
      Caption = #19979#21457#35760#24405
      ImageIndex = 8
      object btn_recordback: TBitBtn
        Left = 773
        Top = 7
        Width = 75
        Height = 25
        Caption = #36820#22238
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_recordbackClick
      end
      object PageControl7: TPageControl
        Left = 0
        Top = 32
        Width = 857
        Height = 513
        ActivePage = TabSheet27
        TabOrder = 1
        OnChange = PageControl7Change
        object TabSheet27: TTabSheet
          Caption = #24050#19979#21457#35760#24405
          object DBGridSent: TDBGrid
            Left = 0
            Top = 0
            Width = 849
            Height = 481
            DataSource = DSSent
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridSentDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Count'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = #24207#21495
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'cmdType'
                Title.Alignment = taCenter
                Title.Caption = #25351#20196#31867#22411
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'cmdStr'
                Title.Alignment = taCenter
                Title.Caption = #25351#20196
                Width = 235
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'unitMac'
                Title.Alignment = taCenter
                Title.Caption = #20027#26426
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'userMac'
                Title.Alignment = taCenter
                Title.Caption = #20998#26426
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sendTime'
                Title.Alignment = taCenter
                Title.Caption = #19979#21457#26102#38388
                Width = 175
                Visible = True
              end>
          end
        end
        object TabSheet28: TTabSheet
          Caption = #26410#19979#21457#35760#24405
          ImageIndex = 1
          object DBGridNotSent: TDBGrid
            Left = 0
            Top = 0
            Width = 849
            Height = 481
            DataSource = DSNotSent
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridNotSentDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Count'
                Title.Alignment = taCenter
                Title.Caption = #24207#21495
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'cmdType'
                Title.Alignment = taCenter
                Title.Caption = #25351#20196#31867#22411
                Width = 150
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'cmdStr'
                Title.Alignment = taCenter
                Title.Caption = #25351#20196
                Width = 235
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'unitMac'
                Title.Alignment = taCenter
                Title.Caption = #20027#26426
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'userMac'
                Title.Alignment = taCenter
                Title.Caption = #20998#26426
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'sendTime'
                Title.Alignment = taCenter
                Title.Caption = #19979#21457#26102#38388
                Width = 175
                Visible = True
              end>
          end
        end
      end
      object BitBtn4: TBitBtn
        Left = 680
        Top = 7
        Width = 75
        Height = 25
        Caption = #28165#38500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 587
        Top = 7
        Width = 75
        Height = 25
        Caption = #21047#26032
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn5Click
      end
      object BitBtn7: TBitBtn
        Left = 494
        Top = 7
        Width = 75
        Height = 25
        Caption = #21024#38500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnClick = BitBtn7Click
      end
      object BitBtn8: TBitBtn
        Left = 397
        Top = 7
        Width = 75
        Height = 25
        Caption = #37325#26032#19979#21457
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnClick = BitBtn8Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 169
    Height = 571
    Align = alLeft
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object spBtn_addr: TSpeedButton
      Left = 0
      Top = 0
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #25151#20135#31649#29702
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1C22D932608800251A04B6992
        667F887EC3C9C2DBE0DAE4E5E4E8E8E8EEEEEEEFEFEFF3F3F3F6F6F6F9F9F9FC
        FCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFEFDB8DCB6279222218D193F98332189151187
        08037B000055000E3E0D4355437278719FA19FBCBCBCC8C8C8D3D3D3DFDFDFE8
        E8E8F2F2F2F9F9F9FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFEFBADD8AB1D921A248D188EB46AFFFCEFAABE8172A7
        5343932C2B8D1A1A8B0C097E00005E00043F04223C22545F537F827EA6A6A6BF
        BFBFCACACAD6D6D6E9E9E9F4F4F4F9F9F9FCFCFCFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FCF9A2D4A11F971E39982A93A457F3C5A2FFF7E2FFE4CAFFE4
        CCFFDDBFD2C69597AD66639A3D3A8F21268E13188117116E121F5A1C304B2F49
        5849707670979797B5B5B5CACACAD7D7D7E9E9E9F6F6F6FDFDFDFFFFFFFFFFFF
        FFFFFFF3FAF395D094239D234CA137AEB06DF2B88EEAC69EFFF6E1F9E2C5F7DF
        C1F7DABAFAD8B7FFD6B4FFD4B3F4C99DBCB273537A8F0B5F780A7337187D2524
        79222D6C2D4A644A6170617B837BA5A5A5C4C4C4DDDDDDF4F4F4FFFFFFFFFFFF
        EDF8ED8BCD8B2BA12A5DA946C5B97FF5BF97E2B888E9C8A1FFF6E1F9E5C9F9E2
        C4F7DDBDF5D9B7F4D4B0F1CFA8F6CDA1FFCB9D6275C90034E9103ED12B4FA425
        5E743C85323B921832852040823B5E7A5C919990BFC0BFEDEDEDFFFFFFE7F5E7
        7DC87D33A83378B358DBC48FF2C69BE6BF91E4BB8CEBCAA3FFF6E1FAE8CCF9E5
        C8F7E0C2F5DBBCF5D7B4F3D2ADF4CEA5F6CC9C6078C3003AD90741BF063AAE00
        31B3B38E8DE0AD669E9C4B709731357D29859884BBBCBBEDEDEDD4EDD46FC36F
        3DAB398CBC68EDCE9FF0CC9FE9C899E8C596E7C090ECCDA5FFF6E2FBEBD1FBE7
        CCFDE5C5FCE1BFF7D9B8F4D5B1F5D1A9F7CEA06079C4003AD80941BF0A3DAB00
        36A9AA8F87F8B475F4AC76FFBD869A9492B5B5B5D0D0D0F2F2F295D29537AA36
        9DC475F8D8ABF0D4A4EDCF9FEBCD9DEACA9AE8C595EDD1A7FFF6E3FDEDD4FAE9
        CFEBDCCBEDDBC5FFE8BCFCDDB6F6D3ADF8D1A46079C50039D80940BF0A3DAB00
        36A9A99089F2B576E6AA70FFC99496928FC7C7C7EBEBEBFBFBFBDFF2DF9FD69D
        FDE2B8F3DBA9F0D8A7EFD5A4EDD1A1EDCE9EE9C999EFD4AAFFF7E3FFF0D7FAEA
        D2A3AED3627BD09DA4C0D9C7B8FADBB2FAD4A9627BC7003AD80841BF0A3DAB00
        36A9AA928BF3B77AE6AC73FEC7929D9A96E7E7E7FBFBFBFEFEFEFFFFFFFFFFFF
        FFEECCF4E2B6F3DEB0F0DBABEED5A4EDD3A2EBCF9FF1D8B1FFF7E3FFF4DBF8EB
        D6728FD70027D70036C28B95B7FFE8B7FAD7AE627CC9003AD60841BE0A3DAB00
        35A9AA948DF4BA7DE8AE77FEC792BFBDBAFDFDFDFFFFFFFFFFFFFFFFFFFBFDFA
        FDF4DBF8EECFF8EAC8F4E6C1F3E1BAF2DFB8F0DCB6F3E0BEFFF5E2FFF6DDF1E7
        D86587D90032D60035C07A8AB8FFEDBCFBDAB2617DCA0038D60941BE0A3DAB00
        35A8AC9691F5BC81E8B17AFFCA94D5D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FAF4DBFAF4D9FAF2D6FAF0D4F9EDD3F8EBCCFDE9B8FDE8B9FFF5E3FFF7DFF3E9
        DB7F98DA0841D5002BBF7386B9FFF1C1FDDEB65D7CCD0036D70941BF0A3DAB00
        35A8AC9893F7BF86E8B37FF3BF8DE9E4DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FCF7DDFBF5DCFAF5DAFBF3D8FFF3CAFFEEBAC9C4B4D4CDBEFFFFE3FFF5E0FDF2
        DDDDD9D9AAB5D58397C8B5B6C2FFEBC4FEE2BA738ACA0037D60033C10034AB00
        30A8AB9996F8C38AE9B683E6B586FEF4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FDF9E0FDF8E2FFFADBFFFDC9DDDABF748DC2335DCA567ACFDCE0E1FFFFE2FFF4
        DFFFF7DCFFFBD7FFF5D3FCE9CDFCE4C6FAE1BFD1C4BF9EA2BF7B87B55068A91B
        46A6B09D99F8C58EEBB986E6B688FFF5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FFFCE6FFFFD7F5F0C88FA5C83B66CD003DD20036CF0640CD6183D2EAEADEFFFF
        E2FFF3DEFDF0DAFDEFD5FDEBD1FAE6CAF9E1C5FFE1BCFFE4B4F9D7AFD9C0A9B7
        A7A3DCBA9AF0C292ECBC8BF6BF87EEEEF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FFFFD2AABDCF4974CF0D48D50035D4013FCF0440CC023DC7043CC36684CCF1EF
        DFFFFEE1FFF1DCFEF0D8FDECD4FCE8CEFAE4C8F8E0C1F5DBBBF7D8B4FAD7ACFD
        D4A5F3CB9DEDC296ECBD90FFCB8597A9D3FBFCFEFFFFFFFFFFFFFFFFFFD9E2F4
        5F85D31A52D70037D9003ED40340D0043FCD053FCA0640C5023BC1053CBD6B87
        C9F3F0DEFFFDE1FFF1DBFEEED6FCEBD2FAE7CBF9E3C6F7DEBFF6DAB9F4D5B0F2
        D0A9F1CBA2EDC59BFFCD93C5A5903355A95D7EC7EDF1F9FFFFFF7895EE285BE3
        003DDB003CD80240D50340D20440CE0440CA053FC7073FC3083FBF023BBB063B
        B6738CC7F8F3E0FFFAE0FEF0D9FDEDD5FBEAD0FAE5CAF8E1C3F6DCBCF6D8B5F4
        D4ADF1CEA7FFD69FBFA79A3D58A30E3DA894AAD9F7F9FCFFFFFF0040DD0040DB
        003FD90240D60340D30440CF053FCB053FC8063FC4073FC0083FBC093FBA043A
        B4083BB0778EC6FBF3DFFFF9DEFEEFD7FCEDD3FAE8CEF9E4C7F8DFC0F7DAB9F4
        D6B2FFDFABB8A8A43756A6083AA99AAEDCFBFCFEFFFFFFFFFFFF7D9EED0040D9
        0140D70241D40340D10440CD053FC9063FC6073FC2083FBE083FBA0A3EB70B3E
        B30538AF0B3DAE7E94C5FDF4DFFFF6DBFDECD5FBEAD0FAE6CAFAE2C5F7DDBDFF
        E7B9B2A9AD3153A8083AA998ADDBFBFCFEFFFFFFFFFFFFFFFFFFF3F6FE8FABEE
        003FD5013FD20340CE0440CB0640C7063FC3073EBF083EBC093EB80A3DB50B3E
        B10B3EAF0739AA0C3CAB8194C4FFF4DDFFF4D9FCECD4FBE8CEFBE5C8FFEFC4AA
        A8B52A50AA0839A995AADAFAFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FE
        9BB4EE0B46D1003CCA033EC70640C4073FC0083EBC093EB90A3EB60B3EB20B3E
        B00C3DAC0C3DA90739A80D3DAA8699C4FFF4DBFFF3D7FDEBD2FFF4CFA2A7BB24
        4CAA073AA92A57B8D9E1F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9FAFEACC0EF2155CF0F47C7023CBF053DBD073DB9093DB50A3EB20B3DB00C3D
        AD0B3CAB0B3CA80B3BA80335A61142AB90A0C7FFF3DAFFFCD89DA5C01E49AA08
        39AA0A3FB43863C0DDE4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFCFFBCCBF04871D33462CB2656C41B4BBC1043B60B3CB00739AD0A3B
        AB1140AB1B47AE2751B2355DB74268BC5576C3ADB7D08D9CC21D47AA0839A908
        40BC0841BE3862C1DCE3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFFC4D2F1577DD25A7DD0587BCC567ACA5678C75679C65678
        C55879C4597AC45B7BC55D7DC6607FC66483C84C6EBE1A47AC0B3CAA0841C306
        43CC0841BF3862C0DCE3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFEFFCBD6F16888D36A89D16988CE6988CD6A88CC6A88
        CB6A88CA6A88CA6B88CA6C89CB6E8CCC6987C9325AB40A3CAC0A41BE0741C407
        42C90842C23862C1DCE3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD1DBF17290D2708FD0708DCF728ECE738E
        CD7490CE718ECD5C7DC54066BB2550B14267BB2B59C20438AE04297F04256F07
        2C7F06349D335DBCDBE3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD7E0F37D98D37A95D06C89CA4E72
        C03159B5315BB76A88CAA9BBE1E7ECF6F7F9FDAFC2F08296C8808FB44B629751
        679BBEC6D9DFE5F3F7F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3DCF05B7BC55879C49AAE
        DCDCE3F3F9FAFDFCFCFEFEFEFFFFFFFFFFFFFFFEFEFFFDFDFEFDFDFEFBFBFDFB
        FBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spBtn_addrClick
    end
    object spBtn_dev: TSpeedButton
      Left = 0
      Top = 41
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #35774#22791#20449#24687
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFCFC
        FCFBFBFBFAFAFAFAFAFAF9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFBFBFBFC
        FCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7C1C1C19D9D9D7D7D7C5F5F604848
        493635362A2A2A2C2C2D3636364747475E5E5F7D7D7DA2A2A3CFD0D0EDEDEDEF
        EFEFF2F2F2F6F6F6FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE0E0E09F9F9F6665665A5A5A605F5F6463636564646363
        63605F5F595959504F4F4545453A39392E2E2F242324191819282829707070BF
        BFBFE6E6E6E8E8E8ECECECF1F1F1F6F6F6FCFCFCFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFE8888886565658281818281827D7C7C7776777070706969
        696261615A59595251514949494241423B3A3A3434342E2E2E27272714141554
        5455E6E6E6E6E6E6E7E7E7E8E8E8ECECECF3F3F3FAFAFAFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFD8686866565658281818281817D7C7D787777504D4C423F
        3F4A47464A47464A47464A474641413E1E1C1D3333332E2E2E27262714141555
        5556E9E9E9E9E9E9E9E9E9E9E9E9EAEAEAEDEDEDF4F4F4FDFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFCFCFCD7D7D79797976464655A5A5A605F606464636E6C6D4E4E
        4E736F72736F72736F72736F724E4E4E1E1C1D242323191819292929747475C6
        C6C6EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF3F3F3FCFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDF7F7F7F2F2F2DCDCDCB9B9B99898987A7B7A5B595C413E
        424C494C4C494C4C494C4C494C3A363B4E4E4E808181A8A7A8D4D4D4F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1F1F1F2F2F2F7F7F7FDFDFDFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFCFCFCF9F9F9F6F6F6F5F5F5F4F4F4F4F4F45B595C1718
        1D2D2B302D2B302D2B302D2B301414194E4E4EF4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F5F5F5F6F6F6F9F9F9FCFCFCFEFEFE8D8D8B8D8D8B
        8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D
        8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D
        8D8B8D8D8B8D8D8B8D8D8B8D8D8B8D8D8BFEFEFEFFFFFFFFFFFFB6B6B7AEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAECDCCCBAEAEAECDCCCBAE
        AEAE60FE9860FE98AEAEAEAEAEAEB6B6B7FFFFFFFFFFFFFFFFFFB5B4B5D2D2D1
        D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2
        D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2D2D1D2
        D2D1D2D2D1D2D2D1D2D2D1D2D2D1B4B5B6FFFFFFFFFFFFFFFFFFB3B3B4D3D3D2
        7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C51
        0C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C510C7C
        510C7C510C7C510C7C510CD3D3D2B3B4B4FFFFFFFFFFFFFFFFFFB2B2B3D3D4D3
        8A5C12CEA958CEA859CEA959CEA958CEA858CEA858CEA859CEA859CEA859CDA8
        58CDA858CEA858D7B876E6D4ACEBDCBCEBDCBDEBDCBDEBDCBCEBDDBDEBDCBDEB
        DDBCEBDCBCEBDDBC8A5C12D3D4D3B2B1B2FFFFFFFFFFFFFFFFFFB0B0B1D4D4D4
        8A5C12CBA555CBA455CBA455CBA455CBA555CCA456CBA455CBA555CBA555CBA5
        55CCA659DEC594E7D6B2E7D6B2E7D6B2E7D6B2E7D6B2E7D6B2E7D6B2E7D6B2E8
        D6B2E7D6B2E7D6B28A5C12D5D4D4B0B0B1FFFFFFFFFFFFFFFFFFAFAEAFD6D6D4
        8A5C12C8A051C8A051C8A051C7A052C8A051C8A052C89F51C8A051C8A052CBA5
        5BDDC696E3CEA6E3CEA6E3CEA6E3CEA6E3CEA6E3CEA6E3CEA6E3CEA6E3CEA6E3
        CEA6E3CEA6E2CEA68A5C12D6D5D5AEAEAFFFFFFFFFFFFFFFFFFFADACADD6D7D5
        8A5C12C49A4DC49B4DC59B4DC59B4DC59B4DC49B4DC49B4DC59A4DCAA55EDCC2
        93DDC699DDC699DDC699DDC599DEC699DEC699DDC699DDC699DDC699DDC699DD
        C599DDC699DEC6998A5C12D7D6D6ADADADFFFFFFFFFFFFFFFFFFAAAAABD7D7D6
        8A5C12C09548C09549C09548C09548C09649C09548C09548C8A35ED7BB8AD7BC
        8BD8BC8BD7BC8BD7BC8BD7BC8BD7BC8BD7BC8BD7BC8BD8BC8BD8BC8BD7BC8BD7
        BC8BD7BC8BD7BC8B8A5C12D7D8D6ABAAABFFFFFFFFFFFFFFFFFFA8A8A9D8D8D8
        8A5C12BD9145BC9044BC8F43BC9043BC9043BC8F43C0964ECFB07AD0B27CD0B2
        7CD0B17CD0B17CD0B17CD0B27CD0B27CD0B27CD0B27CD0B17CD0B27CD0B27CD0
        B27CD0B17CCCAA708A5C12D8D8D7A8A8A9FFFFFFFFFFFFFFFFFFA7A7A6D9D9D8
        8A5C12C19B59BC914AB78A3EB78A3EB88A3EBA8D43C7A468C9A66DC9A66DC9A6
        6DC9A66DC9A66DC9A66DC9A66DC9A66DC9A66DC9A66DC9A66DC9A66DC9A66DC9
        A66DC9A66DBD944F8A5C12D9D9D8A6A7A7FFFFFFFFFFFFFFFFFFA4A4A4DADAD9
        8A5C12C39F63C39E64BE9656B78B44B4843BBE9657C19B5EC19B5EC19B5DC19A
        5DC19A5EC19B5EC19B5DC19A5EC19A5DC19A5EC19A5DC19A5EC19A5EC19A5EC1
        9A5EBF9758B384398A5C12DADADAA4A4A4FFFFFFFFFFFFFFFFFFA1A1A2DBDADA
        8A5C12BF9A5FC29D65C5A16AC39F68C39F68C09960BA8F4FBA904FB98F4FB990
        50B9904FB98F50B98F50B98F4FBA8F50BA9050B9904FB99050BA904FB98F4FB9
        904FB3833EAF7E348A5C12DBDBDAA2A2A2FFFFFFFFFFFFFFFFFFA0A0A0DCDCDB
        8A5C12BC955BBF9861C19C67C6A372CBAC7ECCAD81C6A473C09A63B88E50B183
        40B18340B18340B18440B18340B18440B18340B18440B18340B18340B18340B0
        813DAA772EAA772E8A5C12DCDCDC9FA0A0FFFFFFFFFFFFFFFFFF9E9E9EDCDDDC
        8A5C12B99057BC945DBE9863C09C6AC5A475C8A77ACAAA7FCDAF86CDB088C8A6
        7AC09B69B99057B18444A97831A97831A97831A97831A97831A97831A97831A6
        722CA67229A571298A5C12DCDDDD9D9E9EFFFFFFFFFFFFFFFFFF9B9C9CDEDDDE
        8A5C12B68C53B99059BB945FBE9865C09C6BC3A071C5A477C8A97FCAAD84CEB1
        8BD1B692D3BA98D5BD9DD0B48FCAAB83C4A274BD9865B88F58B2874CAE7F41A9
        7836A5732DA36F278A5C12DEDDDD9C9C9CFFFFFFFFFFFFFFFFFF9A999ADFDFDE
        8A5C12B38850B68C56B8905CBB9462BE9869C09D6FC3A175C6A67CC9AA82CCAF
        89CFB390D1B796D4BC9DD7C0A3DAC5AADDC9B0DFCEB6E2D2BDE5D6C3E7DAC9EA
        DECFECE2D4EFE6DA8A5C12DFDEDE9A9A9AFFFFFFFFFFFFFFFFFF989798DFDFDF
        8A5C12B0854DB38954B68C59B99160BC9666BE996CC19E73C4A379C7A880CAAC
        87CDB18ED0B594D3BA9BD6BFA2D9C4A9DCC8AFDECCB5E1D0BBE4D5C2E7D9C8E9
        DDCEECE1D3EFE5DA8A5C12DFDFDF989898FFFFFFFFFFFFFFFFFF969696E0DFDF
        8A5C12AE824BB18651B48A57B78F5EBA9364BC976ABF9C70C2A178C5A57EC8AA
        85CCAF8CCFB492D2B99AD5BDA0D8C2A8DBC7AEDDCBB4E0CFBAE3D4C1E6D8C7E9
        DCCDEBE0D3EEE5D98A5C12E0E0DF969697FFFFFFFFFFFFFFFFFF949594E0E0E0
        8A5C12AD7F49B0844FB28855B58D5CB89162BB9669BE9A6FC19F76C4A47DC7A9
        84CBAE8BCEB291D1B799D4BC9FD7C1A6DAC5ADDDCAB3E0CEBAE3D3C0E5D7C6E8
        DCCDEBE0D2EEE4D98A5C12E0E0E0949595FFFFFFFFFFFFFFFFFF939393E0E0E0
        8A5C12BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF81
        15BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF8115BF
        8115BF8115BF81158A5C12E0E0E0949393FFFFFFFFFFFFFFFFFF929292928D88
        928D88928D88928D88928D88928D88928D88928D88928D88928D88928D88928D
        88928D88928D88928D88928D88928D88928D88928D88928D88928D88928D8892
        8D88928D88928D88928D88928D88929292FFFFFFFFFFFFFFFFFF919191919191
        A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2
        A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2
        A2A2A2A2A2A2A2A2A2A2A2919191919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spBtn_devClick
    end
    object spBtn_door: TSpeedButton
      Left = 0
      Top = 82
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #38376#31105#31649#29702
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF19160F6B594FCE7DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBAB4DEB5F18E95509E95509EC6927F2996CF9C9B2FEF6F1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBAB4DEB5F18E95509E9550AE95509E9560AE9560AE9560AEF7D45F4AA84FA
        D8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBAB4DEB5F19EA5509E9550AE9550AE9560BE9550AEA550BE9560BE9560CEA
        560BEB611BF08D5AF7BC9FFDECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF021D581848770000000000
        00FBAB4DDB5008E9560AEA550AE9560AEA560BE9560BEA560BE9560CE9570CE9
        560CE9570CE9560DE9560DDE530D0D2155184878FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03215C1848790000000000
        00FBAB4DDB5009E9550AE9550BE9560BE9560BE9560BE9560CEA570CE9570DE9
        570DE9570DE9570DE9580EE9570F112456194879FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05245F1849790000000000
        00FBAB4DDB5009E9550BE9560CE9560CEA570CE9570CE9570CE9560DE9570DE9
        570EE9570EEA570EE9570EE9570F12275A184979FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF062863184A7B0000000000
        00FBAB4DDB510AEA570BE9560CE9560CE9560DE9570DEA570DE9570DE9570EE9
        570EE9570EE9580EE9570FE9580F142A5E194A7BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF092C68184B7C0000000000
        00FBAB4DDE6120EB5F18E9560CEA570DEA570DE9570DEA570EEA570EE9570EE9
        570FE9580FEA580FEA580FEA5810152F63194B7BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF0B316D194C7D0000000000
        00FBAB4DE37640EE7B40EC6F2FEB631EE95810E9570EE9570EE9570EEA570FEA
        5810E9580FE95810EA5811EA5811173368194C7DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA0C3572194D7E0000000000
        00FBAB4DE57A46EE7F47EE7C43EE793FED6D2EEA601AEA580FE9580FE9580FEA
        5810EA5811EA5811E95811EA59111A376D194E7EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C83434D91037801A4E800000000000
        00FBAB4DE67E4BEF824BEF7F48EE7D45EE7B41EE7439EC6624E95810E95810EA
        5910EA5811EA5911EA5912EA59121C3C721A4E80FFFFFFFFFFFFFFFFFF1616C8
        1616C81616C81616C81616C81616C81616C87070FC3439D21A4B890000000000
        00FBAB4DE6824FEF8651C35B18EE8149EF7E47EE7C44EE7940EC6827EA5A12EA
        5912EA5911E95912E95A12E959131E41771A5081FFFFFFFFFFFFFFFFFF1616C8
        C0C0FE9494FD7171FD7171FD7171FD7171FD7171FD7070FC353AD30202130000
        00FBAB4DE684548292914B6980C35B18EF824CEF8049EE7D45EE7A42EC6927E9
        5912E95912E95A12EA5A13E9591421467D1A5183FFFFFFFFFFFFFFFFFF1616C8
        CECEFEC5C5FEA0A0FE7F7FFD7171FD7171FD7171FD7171FD6E6EFB1919970000
        00FBAB4DE7885A9CA89E809E9EF08855F08551EF834EEF814AEE7E47EE7B43EB
        6626EA5913E95913E95A14E95914224B831B5285FFFFFFFFFFFFFFFFFF1616C8
        D4D4FECFCFFECBCBFEBABAFEA0A0FE8C8CFD7D7DFD7272FC373DD30202130000
        00FBAB4DE88D60F19262F18E5EF08C5BEF8A58EF8753F08551EF824DEF7F4AEE
        773DEA611EEA5A14E95A15EA5A1524518A1B5386FFFFFFFFFFFFFFFFFF1616C8
        1616C81616C81616C81616C81616C81616C8BCBCFE575CDB1B4E8E0000000000
        00FBAB4DE89066F29668F19264F09060F18D5CF08A59EF8956EF8552EF834FEE
        814BED6F33EA5A14E95B15EA5A1527568F1C5488FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C85B5BE01D55A21C558A0000000000
        00FBAB4DE9966CF2986DF2966AF19466F19263F18E5EF08C5AEF8957EF8754EF
        8451EE804AEB6524EA5B15EA5A162A5B961C5689FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1616C8EAEAFA2061A41C578B0000000000
        00FBAB4DE99871F39D73F29A70F2976BF19568F19264F19060F18D5DEF8B5AF0
        8856F08653ED7236EA5B16EA5B172D619C1C578BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FEFFFFFF2367AB1C598C0000000000
        00FBAB4DEA9B75F3A179F39E76F29B71F2996EF2966AF19467F19163F18E5FF0
        8B5BF08958EF814DEB601DEA5B182F66A11C588CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF256CB01C598E0000000000
        00FBAB4DECA07CF3A57FF3A27AF39F77F29D74F29A6FF2976CF19568F19265F1
        9061F08D5DF08A59EB6B2DEA5C18326CA81C5A8EFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2872B71C5B900000000000
        00FBAB4DECA581F4A985F4A680F3A47DF3A079F39E75F29B71F2986EF1966AF1
        9366F19063F18E60ED753DEA5C183371AE1C5B8FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B78BD1D5C910000000000
        00FBAB4DEDA886F4AD8AF4AA86F4A783F3A47EF3A27BF39F77F29C73F1996FF2
        976CF19569F19264EF804CEA5B183575B31D5D91FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D7DC31D5D920000000000
        00FBAB4DEEAC8CF5B090F4AE8CF4AB89F4A884F4A681F3A47DF3A078F29E75F2
        9B72F2986DF1966AF08A5AEA5C18387BB91D5E92FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F82C91E5E940000000000
        00FBAB4DEEAF91F5B495F5B291F4AF8DF4AC8AF4AA86F4A682F3A47EF3A17BF3
        9E77F29C73F2996FF19467EA5C193B80BF1E5F94FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3287CE1E60950000000000
        00FBAC4EF6B898F6B89BF6B697F5B293F5B090F5AD8CF4AB87F3A884F3A680F3
        A27CF3A079F29D75F29A70EA5C193D84C21E6095FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF338BD31E60970000000000
        008A6841D7A068FBB87CF9B98EF7B797F5B495F5B191F5AE8DF4AC8AF4A985F4
        A682F3A47EF3A07AF29A70EA5C193E88C71E6096FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3690D71E62980000000000
        0000000000000018120B574229BD8B59DEA46CFAB67AF8B68BF6B18EF4AD8BF4
        AA87F4A783F3A47FF2976CEA5C19408CCC1F6198FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3793DC1E62980000000000
        000000000000000000000000000000000000001E170E664C30C7935FFCB774FA
        B47AF7B184F5A983F19063EA5C194290D11E6298FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3997DF1E63990000000000
        0000000000000000000000000000000000000000000000000000000000000027
        1E137A5B39CE9861FBB26CF489424294D41F6299FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A99E31F639A1F639A1F63
        9A1E639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F639A1F
        649A1F639A1F639A1F639A2F6A981F639A1F649AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B9CE63B9CE63B9CE63B9C
        E63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B
        9CE63B9CE63B9CE63B9CE63B9CE63B9CE63B9CE6FFFFFFFFFFFF}
      OnClick = spBtn_doorClick
    end
    object spBtn_alarm: TSpeedButton
      Left = 0
      Top = 123
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #25253#35686#20013#24515
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF5F5F5D4D4D4A6A6A6888888868686A1A1A1CDCDCDF0F0F0FEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        F9D3D3D35A5B892F30862C2D8236366D5757588A8A8ACBCBCBF5F5F5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
        EB4748962126C42226C32427BC2628B62E2E8552525A9E9E9EE6E6E6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D
        C91F25CB2025C92126C82126C52427BF2527B9363671838383D9D9D9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6869
        BD373EDD494FDB5357D84449D13035CC2B2FC52A2BA1838383D9D9D9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8F
        D08488EB6F74E87074E55C61DC4A4ED24A4ED23A3CB29D9D9DE5E5E5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
        D9999DEF8488EB8488EB6F74E65C61DE5D61DA6061A2C8C8C8F4F4F4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA7A8D7999DEF999DEF8488EB6F74E87C7DBCAFB0BCEEEEEEFDFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF5F5FAB1B2D8A9ACE59D9FE39496C8C0C0CAF1F1F1FDFDFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEEEEEC3C3C3A2A2A2A1A1A1BFBFBFEBEBEBFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEACACC452528A3D3D74494A66838383D1D1D1FCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFDFDFD3131A22427BD2427BC2527B365656ABFBFBFF8F8F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF8F8F9292BAA2327C22327C12427BC595968B5B5B5F2F2F2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDFE0E52326B52126C72226C62327C24D4E69A9A9A9ECECECFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC6C6D32126BD2026CB2026CA2126C843436D9E9E9EE6E6E6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA7A8C12125C31F25D01F25CF2026CD3B3B72929292E0E0E0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF8889B11F25C81F25D11F25D11F25D133337B858585DADADAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6667A41E25D21E25D41E25D31F25D12B2D8C797979D4D4D4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FE48499D1D25DA1D25D91D25D81E25D62529A96F6F6FCCCCCCFDFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FD34369D1D25DA1D25DA1D25DA1D25DA2126C1676869C2C2C2F8F8F8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F94447B21D25DA1D25DA1D25DA1D25DA1F25CB5B5B66B6B6B6F2F2F2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
        F06F72D32B32DD1D25DA1D25DA1D25DA1D25D54E4F69AAAAAAECECECFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3
        E37B7FDF6C71E7242CDC1D25DA1D25DA1D25DA44446F9E9E9EE6E6E6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B5
        D47B7FE57A7FEA686EE7242CDC1D25DA1D25DA393A75909090E0E0E0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B
        CA8488EB8488EB7A7FEA7176E8373EDF1D25DA303286808080D7D7D7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9595
        CE8F93ED8F93ED8488EB7A7FEA797EEA5F65E53A3CB0757575D2D2D2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9899
        D4999DEF999DEF8F93ED8488EB8488EB7A7FEA7A7EDB747474D1D1D1FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A2
        DAA3A6F0A3A6F0999DEF8F93ED8F93ED8488EB7B7FE1808080D7D7D7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6
        D9AEB1F2AEB1F2A3A6F0999DEF999DEF8F93ED7E81CCA1A1A1E6E6E6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7
        E4B6B7EEB7BAF4AEB1F2A3A6F0A3A6F0999DEF7A7BA5D1D1D1F8F8F8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9B9BC6B5B6E9B7BAF4AEB1F2AEB1F08E8FC2CECECEF3F3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE6E6F39697CE9595CDB1B1D2E5E5E8F8F8F8FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spBtn_alarmClick
    end
    object spBtn_credit: TSpeedButton
      Left = 0
      Top = 164
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #21047#21345#35760#24405
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB9494947070707070707070
        7070707070707070707070707070707070707070707070707070707070707070
        7070707070707070707070707070707070949494DBDBDBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D684A8D684A8D684A8D684A8D68
        4A8D684A8D684A8D684A8D684A8D684A8D684A8D684A8D684A8D684A8D684A8D
        684A8D684A8D684A8D684A8D684A8D684A707070CFCFCFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6A4BFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F694B707070CFCFCFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906B4DFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF906B4E707070CFCFCFFFFFFFFFFFFFFFFFFF
        F3F3F3DBDBDBCFCFCFCFCFCFCFCFCFCFCFCF926D4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF926D4F707070CFCFCFFFFFFFFFFFFFFFFFFF
        DBDBDB949494707070707070707070707070946F51FFFFFFFEFEFEF1EBE6F1EB
        E6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1EBE6F1
        EBE6F1EBE6F1EBE6FEFEFEFFFFFF946F51707070CFCFCFFFFFFFFFFFFFFFFFFF
        8E694B8F694C8E694B8F694B8F694B8F694B967153FFFFFFFEFCFCFEFCFCFEFC
        FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFCFE
        FCFCFEFCFCFEFCFCFEFCFCFFFFFF967153707070CFCFCFFFFFFFFFFFFFFFFFFF
        906B4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF987456FFFFFFFDFBF9FDFBF9FDFB
        F9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FDFBF9FD
        FBF9FDFBF9FDFBF9FDFBF9FFFFFF987455707070CFCFCFFFFFFFFFFFFFFFFFFF
        916C4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B7659FFFFFFFCF9F7F0E7E0F0E7
        E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0E7E0F0
        E7E0F0E7E0F0E7E0FCF9F7FFFFFF9B7558707070CFCFCFFFFFFFFFFFFFFFFFFF
        936E51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D785BFFFFFFFBF7F4FBF7F4FBF7
        F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FBF7F4FB
        F7F4FBF7F4FBF7F4FBF7F4FFFFFF9D785B707070CFCFCFFFFFFFFFFFFFFFFFFF
        957053FFFFFFFFFFFFF2EBE6F2EBE6F2EBE6A07C5FFFFFFFF9F5F1F9F5F1F9F5
        F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9F5F1F9
        F5F1F9F5F1F9F5F1F9F5F1FFFFFFA07C5E707070CFCFCFFFFFFFFFFFFFFFFFFF
        987356FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA47F61FFFFFFF8F2EEEDE2DAEDE2
        DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAEDE2DAED
        E2DAEDE2DAEDE2DAF8F2EEFFFFFFA47E62707070CFCFCFFFFFFFFFFFFFFFFFFF
        9A7557FFFFFFFEFEFDFEFEFDFEFEFDFEFEFDA68164FFFFFFF7F0EBF7F0EBF7F0
        EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7F0EBF7
        F0EBF7F0EBF7F0EBF7F0EBFFFFFFA68164707070CFCFCFFFFFFFFFFFFFFFFFFF
        9C775AFFFFFFFEFCFBF1E9E3F1E9E3F1E9E3A98467FFFFFFF5EDE7F5EDE7F5ED
        E7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5EDE7F5
        EDE7F5EDE7F5EDE7F5EDE7FFFFFFA98468707070CFCFCFFFFFFFFFFFFFFFFFFF
        9F7B5DFFFFFFFCFAF9FCFAF9FCFAF9FCFAF9AC876BFFFFFFF4EBE4EADDD2EADD
        D2EADDD2EADDD2EADDD2EADDD2EADDD2EADDD2EADDD2EADDD2EADDD2EADDD2EA
        DDD2EADDD2EADDD2F4EBE4FFFFFFAC876A707070CFCFCFFFFFFFFFFFFFFFFFFF
        A37D60FFFFFFFBF9F6FBF9F6FBF9F6FBF9F6AF8A6DFFFFFFF3E9E1F3E9E1F3E9
        E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3E9E1F3
        E9E1F3E9E1F3E9E1F3E9E1FFFFFFAF8A6E707070CFCFCFFFFFFFFFFFFFFFFFFF
        A48063FFFFFFFAF6F3EEE5DEEEE5DEEEE5DEB28D70FFFFFFF1E6DDF1E6DDF1E6
        DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1E6DDF1
        E6DDF1E6DDF1E6DDF1E6DDFFFFFFB28D71707070CFCFCFFFFFFFFFFFFFFFFFFF
        A88366FFFFFFF9F4F0F9F4F0F9F4F0F9F4F0B59073FFFFFFF0E4DAE7D7CBE7D7
        CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7D7CBE7
        D7CBE7D7CBE7D7CBF0E4DAFFFFFFB59074707070CFCFCFFFFFFFFFFFFFFFFFFF
        AB8669FFFFFFF8F2EDF8F2EDF8F2EDF8F2EDB89377FFFFFFEFE1D7EFE1D7EFE1
        D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EFE1D7EF
        E1D7EFE1D7EFE1D7EBDCD1FFFFFFB79377707070CFCFCFFFFFFFFFFFFFFFFFFF
        AE886BFFFFFFF6EFE9EBDFD6EBDFD6EBDFD6BA9579FFFFFFEDDFD4EDDFD4EDDF
        D4EDDFD4EDDFD4EDDFD4EDDFD4EDDFD4EDDFD4EDDFD4EDDFD4E9DACEE9DACEE9
        DACEE9DACEE9DACEE6D6C9FFFFFFBA9579707070CFCFCFFFFFFFFFFFFFFFFFFF
        B08B6FFFFFFFF5ECE6F5ECE6F5ECE6F5ECE6BC987CFFFFFFECDDD1ECDDD1ECDD
        D1ECDDD1ECDDD1ECDDD1ECDDD1ECDDD1ECDDD1ECDDD1ECDDD1E8D8CCDCC7B9DC
        C7B9DCC7B9DCC7B9DCC7B9FFFFFFBD987C717171D0D0D0FFFFFFFFFFFFFFFFFF
        B38E71FFFFFFF3EAE2F3EAE2F3EAE2F3EAE2BF9A7FFFFFFFEBDBCFEBDBCFEBDB
        CFEBDBCFEBDBCFEBDBCFEBDBCFEBDBCFEBDBCFEBDBCFEBDBCFE8D7CADCC7B7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9A7E878787DADADAFFFFFFFFFFFFFFFFFF
        B59175FFFFFFF2E7DFE8DACFE8DACFE8DACFC19C81FFFFFFEADACCEADACCEADA
        CCEADACCEADACCEADACCEADACCEADACCEADACCEADACCEADACCE7D6C7DBC7B6FF
        FFFFFFFFFFFFFFFFFFFFFFF5EFEABC9A81BCBCBCEFEFEFFFFFFFFFFFFFFFFFFF
        B89378FFFFFFF0E4DBF0E4DBF0E4DBF0E4DBC39F83FFFFFFEAD8CAEAD8CAEAD8
        CAEAD8CAEAD8CAE7D4C5E7D4C5E7D4C5E7D4C5E7D4C5E7D4C5E7D4C5DBC5B4FF
        FFFFFFFFFFFFFFFFF5EFEBC5A58FBBB5AFEBEBEBFDFDFDFFFFFFFFFFFFFFFFFF
        BB967BFFFFFFEFE2D8EFE2D8EFE2D8EFE2D8C6A185FFFFFFE6D3C4E3CFC0E0CC
        BCDEC9B9DCC7B6DCC7B6DAC5B4DAC5B4DAC5B4DAC5B4DAC5B4DAC5B4DAC5B4FF
        FFFFFFFFFFF5EFEBC6A790BCB5B0EBEBEBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        BD987CFFFFFFEEE0D5EEE0D5EEE0D5EEE0D5C7A287FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF6F0EBC8A991BFB8B3EBEBEBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BF9A7FFFFFFFEDDDD2EDDDD2EDDDD2EDDDD2C8A388C8A388C8A388C8A388C8A3
        88C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8
        A388C6A48BD7D0CBEFEFEFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C19D81FFFFFFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFECDC
        CFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFECDCCFFFFFFFC19D8270
        7070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C49F84FFFFFFEADACDEADACDEADACDEADACDEADACDEADACDEADACDEADACDEADA
        CDEADACDEADACDEADACDEADACDEADACDEADACDEADACDEADACDFFFFFFC49E8370
        7070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C5A085FFFFFFEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8
        CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBEAD8CBFFFFFFC5A08570
        7070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7A286FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7A18794
        9494DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A3
        88C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388C8A388DB
        DBDBF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spBtn_creditClick
    end
    object spBtn_set: TSpeedButton
      Left = 0
      Top = 205
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #35774#32622
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF8F8
        F8F4F4F4F2F2F2EFEFEFEEEEEEEDEDEDEEEEEEEFEFEFF2F2F2F4F4F4F8F8F8FB
        FBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8F8F8F2F2F2E8E8E8DEDE
        DED6D6D6D0D0D0C7C7C78B8B8B7B7B7B7C7C7C959595C6C6C6D6D6D6DEDEDEE8
        E8E8F2F2F2F9F9F9FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF2F2F2CACACA9898988888889F9F9FC4C4C4BFBF
        BFBBBBBBB8B8B8929292737373808080737373636363626262B3B3B3BFBFBFC7
        C7C7D3D3D3E2E2E2F0F0F0FAFAFAFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE8E8E87E7E7E7A797A8080807A797A707070858585B3B3
        B3B2B2B2AAAAAA6A6A6A737373808080737373636363565656A5A5A5B3B3B3B5
        B5B5BABABAC3C3C3D4D4D4E7E7E7F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDE1E1E173737379797A8080807A7A797070706767667E7E
        7E9999997D7D7D636363737373808080737373636363565656AEAEAEB2B2B2B2
        B2B2B2B2B2B4B4B4BBBBBBCBCBCBE1E1E1F4F4F4FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEF7F7F7E2E2E27575757A7A7A80808079797A7070706666665C5D
        5C565656565656636363737373808080737373636363565656A4A4A4AEAEAEA5
        A5A58D8D8D818180828282909090BEBEBEE2E2E2F7F7F7FEFEFEFFFFFFFFFFFF
        EBEBEBEFEFEFEAEAEACECECE7575767A797A8080807A7A7A7070706666665C5C
        5D56565656565663636373737380808073737363636356565663636370707168
        69686F6F6F7676767C7C7C808080828282ADADADEAEAEAFBFBFBFCFCFCA7A7A7
        9F9F9F9696968D8C8D8C8C8C747475797A7980808079797A7070706666655D5D
        5C5656565656566565657979798080807979796C6C6C5B5B5B5A5A5A60606067
        67686F6E6F7676767C7C7C8080808080808B8B8BDCDCDCF7F7F7B8B8B8969695
        9F9F9F9695968A89898080807272727B7B7B8080807E7E7D7676776767675C5C
        5C565656565656717171A3A3A3BDBDBDABAAAB9C9D9D86868660606060606067
        68676F6F6F7676757C7C7C808080808080898989D0D0D0F2F2F28B8B8B969596
        9F9F9F969696898989808080818181A4A4A49C9C9C9F9F9F9898987676765D5E
        5E5656565D5D5D8C8C8CECECECE6E6E6DDDCDDDCDBDB90909061616161606068
        67676F6F6E7675767C7C7B808080808080898989CACACAEFEFEF8E8E8E969696
        9F9F9F9595968989898080808A8A8AE7E7E7BABAB9BCBCBBBBBBBBA6A6A67575
        756B6B6B868687D1D1D1E3E3E3DDDDDDE1E1E1D8D8D87B7B7B5A5B5A60606167
        67676F6E6F7676767B7C7C808080808080898989CACACAEFEFEF919090969696
        9F9F9F959696898989808080808080C0C0C0CBCBCBC0BFC0C3C3C3C7C7C7B1B0
        B0A8A8A8C3C2C3DADADADDDEDEE2E3E2E6E6E6D3D3D38F8F8F6262626364636C
        6C6C7474757B7B7B8080808080808080808A8A8AD0D0D0F2F2F2919090969696
        9D9D9D9696968A89898080808080808E8E8ECFCFCFC4C4C3C8C8C8CCCCCCD0D1
        D1D5D5D5DADADADFDFDEE3E3E3E7E7E7EAEAEAEAEAEBD6D6D691909084848494
        9494A2A2A2AFAFAFB1B1B1919091808080848484DBDBDBF7F7F7909090888888
        8B8B8B8686868383838080808D8D8DACACACBFBFC0C9C8C8CDCDCDD4D4D4E6E6
        E6F4F4F4FCFCFCFDFCFCF8F8F8F2F2F3EEEEEEEDEDEDE8E8E8D7D7D7CDCCCCDB
        DCDBD9D8D9D6D7D6D1D1D1BCBCBC808080858584EAEAEAFBFBFB8A8A8B959595
        A9A9A9AAAAAAA8A8A8A3A3A3ACACACBFBFBFC9C9C9CECECDD4D4D4E0E0E0DADB
        DABBBBBBB6B6B6CECECEEDEDEDFFFFFFF7F7F7EBECECE6E6E7E3E3E3DEDEDFDA
        DBDAD4D3D3C5C4C5A4A4A4868686757575939393F7F7F7FEFEFE8A8A8ACACACA
        DADADACDCDCDC0C0C0C2C2C2C6C5C6CACACACECECFD3D3D3D8D8D8D4D5D4ABAB
        AB636363595959656565777777D2D2D2FEFEFEF1F1F1E2E2E2DDDEDED9DAD9D3
        D3D2C5C5C5A3A3A36F6F6F6667676B6B6BA1A1A1FDFDFDFFFFFFD0D0D0908F8F
        9A9A9AC8C9C9EDEDEDDCDCDCCBCBCBCFCFD0D4D4D3D9D9D9DDDDDDAEAEAE5555
        553233333E3F3E4D4C4C575757636463D9D9DAF6F6F6DDDDDDD9D8D8D3D4D4CB
        CBCBA8A8A97070705C5C5C6262626B6B6BA4A4A4FFFFFFFFFFFFFFFFFFB0B0B0
        9999998F8F8F959595E4E3E4DCDCDCD5D4D5D9D9DADEDEDEDBDBDB9494943D3D
        3D3130303E3E3F4C4D4D565656595959B0B0B0FEFEFED8D7D8D3D3D3CECECFC9
        CACAC0C0C0A2A2A27A7A7A727273717171A3A3A3FFFFFFFFFFFFFFFFFFB3B2B3
        9F9F9F9B9B9B8F8F8FA5A5A5F9F9F9DADADADFDEDEE2E2E3E4E3E3C2C2C27F7F
        7F424343434343504F505E5E5E838383BFBEBFF5F5F5D2D2D2CECDCEC9C9C9C5
        C5C5C1C1C1B9B8B9AFAEAF9F9F9F9090908D8D8DFDFDFDFFFFFFFFFFFFB3B2B2
        9C9C9C929392A2A2A2EFEFEFF2F2F2DFDFE0E4E4E3E7E7E7EAEAEAEAEAEAC5C5
        C59293927B7B7B7877778C8C8CBCBCBCE0E0E0E6E6E6CDCDCDC8C8C9C4C4C5BD
        BEBEBABABABABBBBB9B9B9B9B9B9AAAAAA898889FFFFFFFFFFFFFFFFFFA2A2A2
        8F8F8FC0C0C0F4F4F4E8E8E8E0E0E0E4E4E4E8E8E8EBEBEBEEEEEEECEDECEAEA
        EADDDDDED1D0D1C5C5C5CDCDCDD4D5D4E1E1E1D0D0D0C7C8C7C3C4C4B3B4B497
        97978F8F8F909090959595989898909090E0E0E0FFFFFFFFFFFFFFFFFFA7A8A7
        CECECEEFEFEFDDDDDEE0E0E0DCDDDDD9D8D9D1D2D1E4E4E3ECEDEDE9E9E9E5E6
        E6E2E2E2DDDEDED9D9D9D5D5D5D9D9D9CFCECEC7C7C7C3C3C3B3B4B494939478
        78788C8C8CDCDCDCD0D0D0CBCBCBDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        ABAAAAE1E1E1C0C0C0B1B1B1A3A3A39F9F9FA2A2A2D6D5D5F5F6F6E6E5E5E1E1
        E1DDDDDDD9D9D8D2D2D2C9C9C9CBCACBC6C6C6C3C2C2BFBFBEB6B6B687878761
        6161908F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E5E5E5B1B1B1B0B0B0C4C4C4E0E0E0F1F1F1DEDEDE8E8E8EE8E8E8E3E3E3DCDD
        DCD8D8D8D1D1D1ABABAC9E9E9EABAAABDDDEDED3D3D3BBBBBCB9B9B9A5A5A574
        73738F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F7F7F8F8F8FFFFFFFFFFFFFFFFFFE8E8E8828282EAEAEADBDCDCD7D7
        D7D2D3D2AAA9A9BCBCBCD7D7D7B5B5B5A3A3A3E2E2E2D2D2D2B9B9B9B6B6B690
        90909E9F9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5949494F1F2F2D5D5D5D1D2
        D1C0C0C0979797FBFBFBFFFFFFFBFBFBBCBCBC9A9A9ABFBFBFB4B4B496969699
        9999DADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEB3B3B3A7A7A7A4A4A49595
        959F9F9FDADADAFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0ACACACA7A7A7DCDCDCF4
        F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEADCDC
        DCE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spBtn_setClick
    end
    object spBtn_addrparam: TSpeedButton
      Left = 0
      Top = 287
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #27004#26635#21442#25968
      Flat = True
      Visible = False
      OnClick = spBtn_addrparamClick
    end
    object spBtn_more: TSpeedButton
      Left = 0
      Top = 246
      Width = 169
      Height = 40
      GroupIndex = 1
      Caption = #39640#32423
      Flat = True
      Visible = False
      OnClick = spBtn_moreClick
    end
    object Panel3: TPanel
      Left = 0
      Top = 318
      Width = 169
      Height = 207
      Color = clSkyBlue
      ParentBackground = True
      TabOrder = 0
      Visible = False
      DesignSize = (
        169
        207)
      object spBtn_register: TSpeedButton
        Left = 0
        Top = 1
        Width = 169
        Height = 35
        BiDiMode = bdLeftToRight
        Caption = #19979#36733#21345
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = spBtn_registerClick
      end
      object spBtn_cancel: TSpeedButton
        Left = 0
        Top = 35
        Width = 169
        Height = 35
        Anchors = [akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #27880#38144#21345
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = spBtn_cancelClick
      end
      object spBtn_read: TSpeedButton
        Left = 0
        Top = 69
        Width = 169
        Height = 35
        Caption = #25552#21462#21345
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        OnClick = spBtn_readClick
      end
      object spBtn_clear: TSpeedButton
        Left = 0
        Top = 205
        Width = 169
        Height = 35
        Caption = #28165#38500#21345
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        Visible = False
        OnClick = spBtn_clearClick
      end
      object spBtn_center: TSpeedButton
        Left = 0
        Top = 103
        Width = 169
        Height = 35
        Caption = #21345#20013#24515
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        OnClick = spBtn_centerClick
      end
      object spBtn_CardSender: TSpeedButton
        Left = 0
        Top = 137
        Width = 169
        Height = 35
        Caption = #21457#21345#22120
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        OnClick = spBtn_CardSenderClick
      end
      object spBtn_WriteCard: TSpeedButton
        Left = 0
        Top = 171
        Width = 169
        Height = 35
        BiDiMode = bdLeftToRight
        Caption = #20889#21345#22120
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #24494#36719#38597#40657
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2
          A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4A2A2A4FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA2A2A4A2A2A4A2A2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentBiDiMode = False
        OnClick = spBtn_WriteCardClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 49
    Align = alTop
    Caption = 'xx'#23567#21306
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = Panel2Click
  end
  object sb_tips: TStatusBar
    Left = 0
    Top = 620
    Width = 1034
    Height = 19
    Color = clSkyBlue
    Panels = <
      item
        Width = 168
      end
      item
        Width = 520
      end
      item
        Width = 156
      end
      item
        Width = 155
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object progressbar_cmd: TProgressBar
    Left = 847
    Top = 622
    Width = 150
    Height = 17
    Step = 1
    TabOrder = 4
    Visible = False
  end
  object pMenu_addr: TPopupMenu
    Left = 136
    Top = 56
    object addr_Add: TMenuItem
      Caption = #28155#21152#27004#26635
      OnClick = addr_AddClick
    end
    object addr_Edit: TMenuItem
      Caption = #32534#36753#27004#26635
      OnClick = addr_EditClick
    end
    object addr_Del: TMenuItem
      Caption = #21024#38500#27004#26635
      OnClick = addr_DelClick
    end
    object addr_Refresh: TMenuItem
      Caption = #21047#26032#27004#26635
      OnClick = addr_RefreshClick
    end
    object addr_Param: TMenuItem
      Caption = #27004#26635#21442#25968
      OnClick = addr_ParamClick
    end
  end
  object pMenu_dev: TPopupMenu
    Left = 136
    Top = 97
    object dev_Add: TMenuItem
      Caption = #28155#21152#35774#22791
      OnClick = dev_AddClick
    end
    object dev_Edit: TMenuItem
      Caption = #32534#36753#35774#22791
      OnClick = dev_EditClick
    end
    object dev_Del: TMenuItem
      Caption = #21024#38500#35774#22791
      OnClick = dev_DelClick
    end
    object dev_Refresh: TMenuItem
      Caption = #21047#26032#35774#22791
      OnClick = dev_RefreshClick
    end
  end
  object Comm1: TComm
    CommName = 'COM1'
    BaudRate = 2400
    ParityCheck = False
    Outx_CtsFlow = False
    Outx_DsrFlow = False
    DtrControl = DtrEnable
    DsrSensitivity = False
    TxContinueOnXoff = False
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 500
    XoffLimit = 500
    ByteSize = _8
    Parity = None
    StopBits = _2
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 80
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = Comm1ReceiveData
    Left = 136
    Top = 260
  end
  object Comm2: TComm
    CommName = 'COM1'
    BaudRate = 2400
    ParityCheck = False
    Outx_CtsFlow = False
    Outx_DsrFlow = False
    DtrControl = DtrEnable
    DsrSensitivity = False
    TxContinueOnXoff = False
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 500
    XoffLimit = 500
    ByteSize = _8
    Parity = None
    StopBits = _1
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 100
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = Comm2ReceiveData
    Left = 129
    Top = 540
  end
  object Comm3: TComm
    CommName = 'COM1'
    BaudRate = 1200
    ParityCheck = False
    Outx_CtsFlow = False
    Outx_DsrFlow = False
    DtrControl = DtrEnable
    DsrSensitivity = False
    TxContinueOnXoff = False
    Outx_XonXoffFlow = False
    Inx_XonXoffFlow = False
    ReplaceWhenParityError = False
    IgnoreNullChar = False
    RtsControl = RtsEnable
    XonLimit = 500
    XoffLimit = 500
    ByteSize = _8
    Parity = None
    StopBits = _1
    XonChar = #17
    XoffChar = #19
    ReplacedChar = #0
    ReadIntervalTimeout = 80
    ReadTotalTimeoutMultiplier = 0
    ReadTotalTimeoutConstant = 0
    WriteTotalTimeoutMultiplier = 0
    WriteTotalTimeoutConstant = 0
    OnReceiveData = Comm3ReceiveData
    Left = 129
    Top = 507
  end
  object pMenu_user: TPopupMenu
    Left = 136
    Top = 221
    object user_Add: TMenuItem
      Caption = #28155#21152#36134#21495
      OnClick = user_AddClick
    end
    object user_Edit: TMenuItem
      Caption = #32534#36753#26435#38480
      OnClick = user_EditClick
    end
    object user_Del: TMenuItem
      Caption = #21024#38500#36134#21495
      OnClick = user_DelClick
    end
  end
  object AdoCon: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 11
  end
  object DSAddr: TDataSource
    DataSet = AdoQryAddr
    Left = 149
    Top = 21
  end
  object AdoQryAddr: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_addr order by AddrNO')
    Left = 118
    Top = 21
    object AdoQryAddrID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryAddrAddrType: TIntegerField
      FieldName = 'AddrType'
    end
    object AdoQryAddrAddrName: TWideStringField
      FieldName = 'AddrName'
      Size = 255
    end
    object AdoQryAddrAddrNO: TWideStringField
      FieldName = 'AddrNO'
      Size = 255
    end
    object AdoQryAddrFatherAddr: TWideStringField
      FieldName = 'FatherAddr'
      Size = 255
    end
    object AdoQryAddrDevNO: TWideStringField
      FieldName = 'DevNO'
      Size = 255
    end
    object AdoQryAddrMemo: TWideStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object AdoQryDev: TADOQuery
    Connection = AdoCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_dev')
    Left = 182
    Top = 21
    object AdoQryDevID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryDevDevNO: TWideStringField
      FieldName = 'DevNO'
      Size = 255
    end
    object AdoQryDevDevType: TIntegerField
      FieldName = 'DevType'
      OnGetText = AdoQryDevDevTypeGetText
    end
    object AdoQryDevAddrName: TWideStringField
      FieldName = 'AddrName'
      Size = 255
    end
    object AdoQryDevAddrNO: TWideStringField
      FieldName = 'AddrNO'
      Size = 255
    end
    object AdoQryDevIP: TStringField
      FieldName = 'IP'
      Size = 255
    end
    object AdoQryDevMemo: TWideStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object DSDev: TDataSource
    DataSet = AdoQryDev
    Left = 212
    Top = 21
  end
  object AdoQryRegCards: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_RegCmd')
    Left = 8
    Top = 641
    object AdoQryRegCardsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryRegCardsCardType: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryRegCardsCardTypeGetText
    end
    object AdoQryRegCardsCardNO: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryRegCardsDevType: TIntegerField
      FieldName = 'DevType'
    end
    object AdoQryRegCardsCardHex: TWideStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryRegCardsunitMac: TWideStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryRegCardsuserMac: TWideStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryRegCardsuser6: TWideStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryRegCardscmdStr: TWideStringField
      FieldName = 'cmdStr'
      Size = 255
    end
    object AdoQryRegCardssent: TIntegerField
      FieldName = 'sent'
    end
    object AdoQryRegCardsPersonName: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object AdoQryRegCardsCardMemo: TStringField
      FieldName = 'CardMemo'
      Size = 255
    end
  end
  object DSRegCards: TDataSource
    DataSet = AdoQryRegCards
    Left = 40
    Top = 641
  end
  object AdoQryCancelCards: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_CancelCmd')
    Left = 8
    Top = 673
    object AdoQryCancelCardsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryCancelCardsCardType: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryRegCardsCardTypeGetText
    end
    object AdoQryCancelCardsCardNO: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryCancelCardsCardHex: TWideStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryCancelCardsunitMac: TWideStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryCancelCardsuserMac: TWideStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryCancelCardsuser6: TWideStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryCancelCardscmdStr: TWideStringField
      FieldName = 'cmdStr'
      Size = 255
    end
    object AdoQryCancelCardssent: TIntegerField
      FieldName = 'sent'
    end
    object AdoQryCancelCardsDevType: TIntegerField
      FieldName = 'DevType'
    end
    object AdoQryCancelCardsPersonName: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object AdoQryCancelCardsCardMemo: TStringField
      FieldName = 'CardMemo'
      Size = 255
    end
  end
  object AdoQryReadCards: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_ReadCards')
    Left = 8
    Top = 704
    object AdoQryReadCardsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryReadCardsCardType: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryRegCardsCardTypeGetText
    end
    object AdoQryReadCardsCardNO: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryReadCardsCardHex: TWideStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryReadCardsunitMac: TWideStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryReadCardsuserMac: TWideStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryReadCardsuser6: TWideStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryReadCardsMemo: TStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object AdoQryCard: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_card')
    Left = 8
    Top = 734
    object AdoQryCardID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryCardCardType: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryRegCardsCardTypeGetText
    end
    object AdoQryCardCardNO: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryCardCardState: TIntegerField
      FieldName = 'CardState'
      OnGetText = AdoQryCardCardStateGetText
    end
    object AdoQryCardCardHex: TWideStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryCardunitMac: TWideStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryCarduserMac: TWideStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryCarduser6: TWideStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryCardWallNO: TWideStringField
      FieldName = 'WallNO'
      Size = 255
    end
    object AdoQryCardCardMemo: TWideStringField
      FieldName = 'CardMemo'
      Size = 255
    end
    object AdoQryCardPersonName: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object AdoQryCardValidTime: TStringField
      FieldName = 'ValidTime'
      Size = 255
    end
  end
  object AdoQryWall: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_wall')
    Left = 8
    Top = 761
    object AdoQryWallID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryWallWallNO: TWideStringField
      FieldName = 'WallNO'
      Size = 255
    end
    object AdoQryWallWallNum: TIntegerField
      FieldName = 'WallNum'
    end
    object AdoQryWallWallChosen: TIntegerField
      FieldName = 'WallChosen'
      OnGetText = AdoQryWallWallChosenGetText
    end
  end
  object DSCancelCards: TDataSource
    DataSet = AdoQryCancelCards
    Left = 39
    Top = 670
  end
  object DSReadCards: TDataSource
    DataSet = AdoQryReadCards
    Left = 38
    Top = 701
  end
  object DSCard: TDataSource
    DataSet = AdoQryCard
    Left = 38
    Top = 731
  end
  object DSWall: TDataSource
    DataSet = AdoQryWall
    Left = 38
    Top = 760
  end
  object AdoQryUser: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_user')
    Left = 8
    Top = 789
    object AdoQryUserID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryUserUserName: TWideStringField
      FieldName = 'UserName'
      Size = 255
    end
    object AdoQryUserUserPermission: TWideStringField
      FieldName = 'UserPermission'
      OnGetText = AdoQryUserUserPermissionGetText
      Size = 255
    end
    object AdoQryUserUserPassword: TWideStringField
      FieldName = 'UserPassword'
      OnGetText = AdoQryUserUserPasswordGetText
      Size = 255
    end
  end
  object DSUser: TDataSource
    DataSet = AdoQryUser
    Left = 39
    Top = 789
  end
  object AdoQryAlarm: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_alarm')
    Left = 290
    Top = 21
    object AdoQryAlarmID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryAlarmAlarmType: TIntegerField
      FieldName = 'AlarmType'
      OnGetText = AdoQryAlarmAlarmTypeGetText
    end
    object AdoQryAlarmAddrName: TWideStringField
      FieldName = 'AddrName'
      Size = 255
    end
    object AdoQryAlarmAlarmTime: TWideStringField
      FieldName = 'AlarmTime'
      Size = 255
    end
    object AdoQryAlarmAlarmText: TWideStringField
      FieldName = 'AlarmText'
      Size = 255
    end
    object AdoQryAlarmAlarmStatus: TIntegerField
      FieldName = 'AlarmStatus'
      OnGetText = AdoQryAlarmAlarmStatusGetText
    end
    object AdoQryAlarmAlarmSolved: TIntegerField
      FieldName = 'AlarmSolved'
      OnGetText = AdoQryAlarmAlarmSolvedGetText
    end
    object AdoQryAlarmMemo: TWideStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object DSAlarm: TDataSource
    DataSet = AdoQryAlarm
    Left = 321
    Top = 21
  end
  object AdoQryCardRec: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_CardRec')
    Left = 362
    Top = 23
    object AdoQryCardRecID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryCardRecCardType: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryCardRecCardTypeGetText
    end
    object AdoQryCardRecCardNO: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryCardRecRecDev: TWideStringField
      FieldName = 'RecDev'
      Size = 255
    end
    object AdoQryCardRecRecTime: TWideStringField
      FieldName = 'RecTime'
      Size = 255
    end
    object AdoQryCardRecScreenshot: TBlobField
      FieldName = 'Screenshot'
      OnGetText = AdoQryCardRecScreenshotGetText
    end
    object AdoQryCardRecMemo: TWideStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object DSCardRec: TDataSource
    DataSet = AdoQryCardRec
    Left = 390
    Top = 24
  end
  object OpenDialog1: TOpenDialog
    Left = 6
    Top = 848
  end
  object AdoQryExcel: TADOQuery
    Connection = AdoCon
    Parameters = <>
    Left = 38
    Top = 848
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 70
    Top = 848
  end
  object WorkBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 102
    Top = 848
  end
  object WorkSheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 134
    Top = 848
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 131
    Top = 3
  end
  object ApplicationEvents2: TApplicationEvents
    OnMessage = ApplicationEvents2Message
    Left = 193
    Top = 3
  end
  object ApplicationEvents3: TApplicationEvents
    OnMessage = ApplicationEvents3Message
    Left = 72
    Top = 640
  end
  object ApplicationEvents4: TApplicationEvents
    OnMessage = ApplicationEvents4Message
    Left = 72
    Top = 670
  end
  object ApplicationEvents5: TApplicationEvents
    OnMessage = ApplicationEvents5Message
    Left = 72
    Top = 700
  end
  object ApplicationEvents6: TApplicationEvents
    OnMessage = ApplicationEvents6Message
    Left = 72
    Top = 730
  end
  object ApplicationEvents7: TApplicationEvents
    OnMessage = ApplicationEvents7Message
    Left = 304
    Top = 3
  end
  object ApplicationEvents8: TApplicationEvents
    OnMessage = ApplicationEvents8Message
    Left = 376
    Top = 3
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 1005
    Top = 318
  end
  object AdoQryCmd: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_cmd')
    Left = 171
    Top = 610
    object AdoQryCmdID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryCmdcmdStr: TStringField
      FieldName = 'cmdStr'
      Size = 255
    end
    object AdoQryCmdsent: TIntegerField
      FieldName = 'sent'
    end
    object AdoQryCmdcmdType: TIntegerField
      FieldName = 'cmdType'
    end
    object AdoQryCmdunitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryCmduserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryCmdsendTime: TStringField
      FieldName = 'sendTime'
      Size = 255
    end
  end
  object AdoQryUnitMac: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_unit')
    Left = 7
    Top = 817
    object AdoQryUnitMacID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryUnitMacUnitNO: TWideStringField
      FieldName = 'UnitNO'
      Size = 255
    end
    object AdoQryUnitMacUnitChosen: TIntegerField
      FieldName = 'UnitChosen'
    end
  end
  object AdoConDock: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 947
    Top = 204
  end
  object AdoQryCardInfo: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select unitMac,userMac from t_card')
    Left = 947
    Top = 246
    object AdoQryCardInfounitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryCardInfouserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
  end
  object Timer2: TTimer
    Interval = 100
    OnTimer = Timer2Timer
    Left = 904
    Top = 192
  end
  object IconList: TImageList
    Left = 208
    Top = 576
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFFBFBFBFFC5C5
      C5FF828282FF949494FFDBDBDBFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFCFCFCFFABABAAFF7D7D7DFF7272
      72FF939393FFD6D5D5FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFDCD3C8FFC2873DFFDCA3
      4AFFF0BE60FFE5AF54FFC4893EFF6C6358FFFBFBFBFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC5C5C5FF1C1C1CFF1B1C
      1CFFB5AEA2FFF4F4F2FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECE3D9FF838227FFCE8936FFDDA0
      46FFE5AE51FFA6A240FFDCA047FFC98534FF6B6257FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFF3F3F3FFB2B3B3FFA4A5A5FFABABABFFAEAEAEFFACAA
      A8FFA9ACAFFFB3B3BAFF7BCC97FFABABABFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A77A2FFFA16C1EFFC4772AFFCE89
      36FFD5943EFFB1973BFF3A962BFFB27A28FFB4712BFFD3D3D3FF000000FFFEFE
      FEFF000000FF000000FF000000FF000000FFA85928FFCB9334FFD8A742FFD6A4
      3FFFD19A31FFBC761DFFA96128FFA2998BFFCA00FFFFFF00CCFFFF114DFFFFB6
      AAFFFFECB8FFF6FFBFFFD6FFC3FFC0C5CAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C7F1FFF77A257FFD09E75FFD3A1
      72FFD39F6BFFAEAB69FF6BB461FF479E3BFFAD631AFF023802FF314E31FF8B8D
      8BFFC6C6C6FFECECECFFFCFCFCFF000000FFD09935FFD9A94DFFDEB55DFFDCB3
      59FFD5A345FFCA8F2BFFBD8024FFA2998BFFDF00C1FFFF0054FFFF887FFFFFCF
      77FFF4FF7FFFBCFF8EFF8CFF8FFFBCC0C5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080B677FFC1B691FFD2A585FFD1A1
      7EFFBCB684FF93CF8BFF7FC077FF67AF5BFF95782FFF826B56FF67869FFF1066
      67FF207023FF436B43FF999D99FFF9F9F9FFD39F3FFFDDB45AFFE6C571FFE3BF
      69FFD9AB51FFCC9332FFBF8327FFA2998BFFFBA1C6FFC11A17FFF7A031FFF9FF
      2EFF9EFF42FF63FF60FF37FF8FFFB8BBC1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAD7FFFDBB7A0FFD9B399FFC2C9
      A2FFAFE0AAFFA1D69BFF8CC885FF73B66AFF768E3EFFBFA483FF7684BFFF023B
      BCFF6666A0FFEBBB71FF7B8B74FFE5E5E5FFBD7C32FFDBAF54FFE2BD66FFE0B9
      62FFD7A74AFFCA8F2DFFBE8225FFA2998BFFFFB9BBFFFFDFC3FFD5D463FF82DF
      0AFF3AFF2DFF57FF93FF00FFE8FFB2B6BCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B6703EFFE1C5B2FFDFC0ACFFBBE0
      B7FFB5DEAFFFA7D7A2FF9CC389FF79B872FF985D22FFEED5B0FF7785C4FF033C
      BAFF5F6998FFFFC382FFB1AFADFF000000FF9F492DFFD7A542FFD8A94DFFD5A6
      46FFD19D5DFFFFE2CAFFB97A1DFFA2998BFFFFC6A4FFFFFBB0FFE7FFBBFFCCFF
      C6FFD5FFE1FFD5FFF8FFD8F5FFFFADB1B6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E5DEFFC89471FFE5CCBCFFE1C3
      B0FFD4C1A5FFC4BD98FFB6B386FF8E8C47FF1621A0FFCBCBBAFF7484C8FF053D
      B9FF606C9CFFFFC889FFE7E5E4FF000000FFFAF6F5FF9B4221FFCC922DFFEEBA
      84FF6193C8FF3E77B6FFD5C4C3FFA2998BFFFFF28DFFE3FF9BFFB6FFA7FFB4FF
      C3FFBDFFF0FFC5F5FFFFCDD7FFFFA5A9AEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFF1E5DDFFB0693BFFD2A9
      8DFFBCD7B4FFA1B580FF99652CFFE7D4B9FFE8E8D5FFF6E2C7FFBBB6C2FF415D
      B5FF616D9FFFEFBA85FFFFFAF0FF000000FF000000FF000000FFD0A597FF5793
      D4FF76A1D5FF7FADDCFF83B0DEFFCFE1F2FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD2DC
      D4FF164BD3FF003ACFFF0133C3FFD5DADBFFFFF2DCFFFDEAD1FFFBE2C2FFFEDC
      B2FFF8CFA0FFFFCC8CFFA5B6DDFF000000FF000000FF000000FFA0ADBBFF80AF
      E2FF84B0DFFF90BCE8FF95C2EDFF9DC5EBFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF335DE4FF0038
      D9FF0441D2FF043FC8FF0940C0FF0032B4FFDBE0DAFFFEF1D7FFFAE7CBFFF6DB
      BBFFFDDBABFF918C9FFF597BC6FF000000FF000000FFEEF1F3FF2C496BFF82AF
      E1FF8DBAE7FF9CC9F2FFA4D1F8FF9ECAF2FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FFC5D3F6FF003E
      D3FF033FCCFF083FC3FF083FBBFF0C3FB3FF0131A8FFE4E6DAFFFCECD3FFFFF0
      C8FF828CAFFF597AC6FF000000FF000000FF000000FF7E91A9FF466990FF74A0
      CFFF90BCE8FFA0CDF4FFABD9FDFFA0CDF5FFF8FAFCFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FFD5DF
      F7FF174DC9FF033BBBFF0137B0FF0134AAFF0939A6FF0335A7FFF1EFDBFF7588
      B8FF0035B0FFCED8EEFF000000FF000000FF000000FF5D789AFF395676FF5C84
      B2FF8BB8E6FF9BC8F1FF9ECAF3FF8CB9E4FFCFDAEAFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FFE4EAF8FF6485D1FF5E7FCBFF5E7EC7FF6180C7FF728FCEFF4569BAFF033B
      BEFF0746CFFFC8D3ECFF000000FF000000FF000000FFDCE2EAFF3E6492FF6598
      CFFF3B6EA3FF40679BFF5783B7FF729CC3FFF7F9FBFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FFEFF2FAFF7C98D2FF5F7FC6FF3D64BAFFA1B3DCFF91AAE6FF4960
      93FF6176A6FFE8EDF8FF000000FF000000FF000000FFFDFDFEFF446B99FF2F5A
      8DFF4672A2FF70A4DDFF5582B9FF8FABCFFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFFEFEFEFF0000
      00FFFEFEFEFFCFCFCFFFBABABAFFF4F4F4FF000000FF000000FF000000FF0000
      00FFF7F7F7FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFF4F4F4FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFEFE
      FEFFAFC1CDFF17649EFF0D152AFFC2C2C2FF000000FF000000FF000000FF0000
      00FF707174FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFDFDFDFF4F9236FF26C07EFF2AB96AFFD2D6D1FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFB7DB
      B5FF218D19FF218915FF037B00FF0D3D0DFF717771FFBCBCBCFFD3D3D3FFE8E8
      E8FFF9F9F9FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFBCC9
      D1FF177DBFFF94F7FFFF58BCEEFFECECECFF000000FF000000FF000000FF0000
      00FFE0E0E1FFE0E0E1FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDEDE
      DFFF8E512BFF8F8265FF49CC98FF75D9B2FF4ECE9BFF31A954FF9F6944FF906E
      5AFFCAC8C8FF000000FF000000FF000000FF000000FF000000FFA1D3A0FF3998
      2AFFF3C5A2FFFFE4CAFFFFDDBFFF97AD66FF3A8F21FF188117FF1E591CFF4957
      49FF979797FFCACACAFFE9E9E9FFFDFDFDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFFEFEFEFFC3CDD3FF177D
      BFFF94F7FFFF6FCBF7FFEAEAEAFF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFF7D7E80FFFCFCFCFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFB8B6B6FFE099
      0FFFCAA793FF90A484FFABE8D0FF8ADFBDFF7ADAB4FF5ACB90FFA97955FFE19E
      1AFFE09B12FFFDFCFCFF000000FF000000FF000000FF8ACC8AFF5DA946FFF5BF
      97FFE9C8A1FFF9E5C9FFF7DDBDFFF4D4B0FFF6CDA1FF6275C9FF103ED1FF255E
      74FF3B9218FF3F813BFF909890FFEDEDEDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFFCBD1D4FF17649EFF94F7
      FFFF58BCEEFFEBEBEBFF000000FF000000FF000000FF000000FF000000FF0000
      00FFFDFDFDFF8C8981FFC4A76FFFBFBEBDFF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D7D8FFE6A933FFBB80
      32FF000000FF000000FFBBEAD3FFABE8D0FF8ADFBDFF8AC170FFC3BFBEFFEABF
      73FFE5A72FFFA06633FF000000FF000000FF6FC26FFF8CBC68FFF0CC9FFFE8C5
      96FFECCDA5FFFBEBD1FFFDE5C5FFF7D9B8FFF5D1A9FF6079C4FF0941BFFF0036
      A9FFF8B475FFFFBD86FFB5B5B5FFF2F2F2FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFEFEFEFFD3D7D9FF17649EFF71E5F6FF58BC
      EEFFEAEBEBFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFA49D93FFCE932CFFCF9021FFA89E8DFF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFFBFBFBFF96705BFFEAB651FFE0CB
      C0FF000000FF000000FF000000FFC9E1B8FFE1EED7FF000000FF000000FFBC8F
      76FFC8A57FFFEBB957FFFBF9F8FF000000FF9ED59CFFF3DBA9FFEFD5A4FFEDCE
      9EFFEFD4AAFFFFF0D7FFA3AED3FF9DA4C0FFFADBB2FF627BC7FF0841BFFF0036
      A9FFF3B77AFFFEC792FFE7E7E7FFFEFEFEFF000000FF000000FFFAFAFAFFD6D6
      D6FFA7A7A7FF9F9F9FFFB8B8B8FFCCCCCCFF17649EFF71E5F6FF2A90CAFFEDED
      EDFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFCFCFCFFD59B32FF978465FFCB8916FFC57F06FFE7E7E8FF000000FF0000
      00FF000000FF000000FF000000FF000000FFA18F88FFD5B38FFFF3CF8CFF967B
      6DFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFF1D4A0FFA2745BFF000000FFFAFCF9FFF8EECFFFF4E6C1FFF2DF
      B8FFF3E0BEFFFFF6DDFF6587D9FF0035C0FFFFEDBCFF617DCAFF0941BEFF0035
      A8FFF5BC81FFFFCA94FF000000FF000000FF000000FFF7F7F7FF5B7993FF2A93
      C0FF4AC8EBFF50C5E4FF3186ADFF184E80FF71E5F6FF086DAFFFEDEDEDFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFEFEFEFFC18B2BFFCF901FFFB18E4EFFA68344FFAD7C27FFF9F9F9FF0000
      00FF000000FF000000FF000000FF000000FFFEFEFEFFF5DBADFFF6DBA9FFE5D4
      CBFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA8968BFFBD9982FF000000FFFEFEFDFFFBF5DCFFFBF3D8FFFFEE
      BAFFD3CCBDFFFFF5E0FFDDD9D9FF8397C8FFFFEBC4FF738ACAFF0033C1FF0030
      A8FFF8C38AFFE6B586FF000000FF000000FFFEFEFEFF3781A9FF5FA8C8FFF5F5
      F5FFFCFCFCFFFCFCFCFFE6F0F3FF61CEE7FF134F84FFC7C7C7FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFB2ACA1FFC78613FFA89775FFE1AD4EFFDCA541FFB1AA9DFF0000
      00FF000000FF000000FF000000FF000000FF000000FFC7A68CFFB0866EFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFB48E79FF000000FFFEFEFDFFFFFFD7FF8FA5C8FF003D
      D2FF063FCCFFEAEADEFFFFF3DEFFFDEFD5FFFAE6CAFFFFE1BCFFF9D7AFFFB7A7
      A3FFF0C292FFF6BF87FF000000FF000000FFB8CAD7FF5CA4C7FFFEFEFEFFFFFF
      FFFFFFFFFFFFFAFAFAFFF8F8F8FFFCFCFCFF59C4E0FF7C8690FFF6F6F6FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFFAFAFAFFB3832EFFE2AE51FFDEA947FFC69234FFC48A20FFECED
      EDFF000000FF000000FF000000FF000000FF000000FF9B867CFF3C3D97FF5657
      96FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFDEDE
      DFFF1FB5DDFF36AFCEFFEDE2DCFF000000FFD8E1F3FF1A52D7FF003ED4FF043F
      CDFF0640C5FF053CBDFFF3F0DEFFFFF1DBFFFCEBD2FFF9E3C6FFF6DAB9FFF2D0
      A9FFEDC59BFFC5A590FF5C7DC6FF000000FF3290C1FFF7F7F7FFFFFFFFFFFFFF
      FFFFF9F9F9FFF7F7F7FFF4F4F4FFF3F3F3FF82D1E7FF325375FFE6E6E6FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFBC9650FFD89E37FFAC8C52FFC48B21FFC8860EFFA87C
      30FFFEFEFEFF000000FF000000FF000000FFD0D1D3FF1D25DAFF1E26DBFF1D25
      DAFF434499FF000000FF000000FF000000FF000000FF000000FFF4F4F4FF04D5
      F4FF02DCFAFF00DDF9FF1DC4E0FF000000FF0040DBFF0240D6FF0440CFFF053F
      C8FF073FC0FF093FBAFF083BB0FFFBF3DFFFFEEFD7FFFAE8CEFFF8DFC0FFF4D6
      B2FFB8A8A4FF083AA9FFFAFBFDFF000000FF1D97CFFFFEFEFEFFFFFFFFFFFFFF
      FFFFEFEFEFFFF4F4F4FFEEEEEEFFE9E9E9FFEEF9FCFF164677FFE1E1E1FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFC2BFBBFFCE8E1DFFB1822FFFC6AE87FFAF9361FFAC79
      1EFFF7F7F7FF000000FF000000FF000000FF4D4E97FFA8ABF1FF868AECFF757A
      E9FF3D41CBFF000000FF000000FF000000FF000000FF000000FFABBDC3FFCBFC
      FFFFB3F9FFFF80F6FFFF5FF7FFFF000000FF8EAAEDFF013FD2FF0440CBFF063F
      C3FF083EBCFF0A3DB5FF0B3EAFFF0B3BAAFFFFF4DDFFFCECD4FFFBE5C8FFAAA8
      B5FF0839A9FFF9FAFCFF000000FF000000FF2A96CBFFF8F8F8FFFFFFFFFFFFFF
      FFFFE8E8E8FFE9E9E9FFE0E0E0FFECECECFFA8D3E3FF3A6184FFEDEDEDFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFFBFBFBFFC07D05FFC37C00FFDFC597FFDBC195FFAAA5
      9AFFE7E7E6FF000000FF000000FF000000FF9292ABFFA8ABF1FF979BEEFF757A
      E9FF686ABBFF000000FF000000FFFEFEFEFF000000FF000000FFF8F8F8FFFFFF
      FFFFCCFDFFFFB3FDFFFF7FF7FFFF000000FF000000FFABBFEEFF0F47C7FF053D
      BDFF093DB5FF0B3DB0FF0B3CABFF0B3BA8FF1041AAFFFFF3DAFF9DA5C0FF0839
      AAFF3762BFFF000000FF000000FF000000FF91C4E0FFAAC6DAFFFEFEFEFFFFFF
      FFFFF4F4F4FFDEDEDEFFE4E4E4FFF7F7F7FF38A9D3FF95A2ADFFFDFDFDFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFFDFDFDFFBA8425FFD8B780FFC1AD8AFFBB9C
      67FFC7943CFF000000FF000000FF000000FF000000FF8486B8FFA9ABEBFF978F
      BCFF000000FF000000FF000000FFFDFDFDFF95592DFFB6721CFF975725FF8A56
      36FFF8FFFFFFBFF6FCFFFEFFFFFF000000FF000000FF000000FFC3D1F0FF5A7D
      D0FF567ACAFF5679C6FF5879C4FF5B7BC5FF607FC6FF4C6EBEFF0A3BA9FF0643
      CCFF3761BFFF000000FF000000FF000000FF000000FF3096CAFFB7CCDCFFF0F0
      F0FFFBFBFBFFF0F0F0FFE9E9E9FF4D98BFFF4085ADFFEDEDEDFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFEDEEEEFFDCAA54FFDCAA54FFD49C
      3CFFCB8C1EFFF9F9F9FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD5B696FFC8A182FFAD794EFFC68A3FFFE7AE3FFFE7AC3BFFDB9B2AFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFD0DA
      F0FF708FD0FF728ECEFF7490CEFF5C7DC5FF2550B1FF2A58C1FF04297FFF062B
      7EFF325CBBFF000000FF000000FF000000FF000000FF000000FF409DCEFF1F7D
      B6FF1E6AA1FF1D71A8FF1D8DC5FF5B99BEFFF6F6F6FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFD7D7D7FFCD8F24FFCA89
      18FFC37C00FFF6F6F7FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFA68D7FFFCEAD8FFFE2BE90FFC09266FFC48F52FFFEFEFEFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFD2DBEFFF5778C3FFDBE2F2FFFBFBFDFF000000FFFDFDFEFFFCFCFDFFFAFA
      FCFF000000FF000000FF000000FF000000FF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C1FFFF0300000000807FFF8300000000
      007FFC0000000000002F00000000000000010000000000000000000000000000
      0000000000000000000100000000000000010000000000008001C0FF00000000
      E001C0FF00000000C00180FF00000000C003807F00000000E003807F00000000
      F003807F00000000F80380FF00000000FF90F7FFFEFFFF7FFFE0F7FFF83FE007
      FFC0F3FFE007C000FF81F1FFC0038000FF03F0FF8C030000FE07F07F0E610000
      C00FF03F0FF90003801FF01F0FF90003003FF81F9FFD0003001FF80F8FE10001
      001FFC0707C10001001FFC0707C10003001FFC0706C18007001FFE078E01C007
      803FFF03F01FE007C07FFF83F81FF08F00000000000000000000000000000000
      000000000000}
  end
  object AdoQryPerson: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_card')
    Left = 562
    Top = 57
    object AdoQryPersonID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryPersonPersonName: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object AdoQryPersonCardType: TIntegerField
      FieldName = 'CardType'
    end
    object AdoQryPersonCardNO: TStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryPersonCardState: TIntegerField
      FieldName = 'CardState'
      OnGetText = AdoQryPersonCardStateGetText
    end
    object AdoQryPersonCardHex: TStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryPersonunitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryPersonuserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryPersonuser6: TStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryPersonWallNO: TStringField
      FieldName = 'WallNO'
      Size = 255
    end
    object AdoQryPersonCardMemo: TStringField
      FieldName = 'CardMemo'
      Size = 255
    end
    object AdoQryPersonValidTime: TStringField
      FieldName = 'ValidTime'
      Size = 255
    end
  end
  object DSPerson: TDataSource
    DataSet = AdoQryPerson
    Left = 595
    Top = 57
  end
  object pMenu_card: TPopupMenu
    Left = 137
    Top = 137
    object N3: TMenuItem
      Caption = #19979#36733#21345
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #27880#38144#21345
      OnClick = N4Click
    end
  end
  object pMenu_person: TPopupMenu
    Left = 105
    Top = 56
    object card_download: TMenuItem
      Caption = #19979#36733
      OnClick = card_downloadClick
    end
    object card_cancel: TMenuItem
      Caption = #27880#38144
      OnClick = card_cancelClick
    end
    object card_validtime: TMenuItem
      Caption = #26377#25928#26399
      OnClick = card_validtimeClick
    end
  end
  object TCPClient: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 0
    Left = 1004
    Top = 249
  end
  object TCPServer: TIdTCPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnConnect = TCPServerConnect
    OnExecute = TCPServerExecute
    OnDisconnect = TCPServerDisconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 1004
    Top = 216
  end
  object AdoQryIP: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_dev')
    Left = 1005
    Top = 283
    object AdoQryIPID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryIPDevNO: TStringField
      FieldName = 'DevNO'
      Size = 255
    end
    object AdoQryIPDevType: TIntegerField
      FieldName = 'DevType'
    end
    object AdoQryIPAddrName: TStringField
      FieldName = 'AddrName'
      Size = 255
    end
    object AdoQryIPAddrNO: TStringField
      FieldName = 'AddrNO'
      Size = 255
    end
    object AdoQryIPIP: TStringField
      FieldName = 'IP'
      Size = 255
    end
    object AdoQryIPMemo: TStringField
      FieldName = 'Memo'
      Size = 255
    end
  end
  object IPMCastClient: TIdIPMCastClient
    Bindings = <>
    DefaultPort = 6789
    MulticastGroup = '224.0.0.1'
    OnIPMCastRead = IPMCastClientIPMCastRead
    ThreadedEvent = True
    Left = 1001
    Top = 429
  end
  object IPMCastServer: TIdIPMCastServer
    MulticastGroup = '224.0.0.1'
    Port = 0
    Left = 1001
    Top = 395
  end
  object Timer3: TTimer
    Interval = 100
    OnTimer = Timer3Timer
    Left = 1003
    Top = 361
  end
  object IPWatch: TIdIPWatch
    Active = True
    HistoryEnabled = False
    HistoryFilename = 'iphist.dat'
    Left = 1001
    Top = 464
  end
  object UDPServer: TIdUDPServer
    Bindings = <>
    DefaultPort = 6789
    OnUDPRead = UDPServerUDPRead
    Left = 1002
    Top = 503
  end
  object DSSent: TDataSource
    DataSet = AdoQrySent
    Left = 241
    Top = 609
  end
  object DSNotSent: TDataSource
    DataSet = AdoQryNotSent
    Left = 300
    Top = 609
  end
  object AdoQrySent: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_cmd where sent = 1')
    Left = 212
    Top = 609
    object AdoQrySentID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQrySentCount: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Count'
      Calculated = True
    end
    object AdoQrySentcmdStr: TStringField
      FieldName = 'cmdStr'
      Size = 255
    end
    object AdoQrySentunitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQrySentuserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQrySentsent: TIntegerField
      FieldName = 'sent'
    end
    object AdoQrySentcmdType: TIntegerField
      FieldName = 'cmdType'
      OnGetText = AdoQrySentcmdTypeGetText
    end
    object AdoQrySentsendTime: TStringField
      FieldName = 'sendTime'
      Size = 255
    end
  end
  object AdoQryNotSent: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_cmd where sent = 0')
    Left = 271
    Top = 609
    object AdoQryNotSentID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryNotSentCount: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Count'
      Calculated = True
    end
    object AdoQryNotSentcmdStr: TStringField
      FieldName = 'cmdStr'
      Size = 255
    end
    object AdoQryNotSentunitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryNotSentuserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryNotSentsent: TIntegerField
      FieldName = 'sent'
    end
    object AdoQryNotSentcmdType: TIntegerField
      FieldName = 'cmdType'
      OnGetText = AdoQryNotSentcmdTypeGetText
    end
    object AdoQryNotSentsendTime: TStringField
      FieldName = 'sendTime'
      Size = 255
    end
  end
  object Timer4: TTimer
    Interval = 5000
    OnTimer = Timer4Timer
    Left = 321
    Top = 87
  end
  object ApplicationEvents9: TApplicationEvents
    OnMessage = ApplicationEvents9Message
    Left = 333
    Top = 609
  end
  object ApplicationEvents10: TApplicationEvents
    OnMessage = ApplicationEvents10Message
    Left = 365
    Top = 608
  end
  object AdoQrySys: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_sys')
    Left = 696
    Top = 16
    object AdoQrySysID: TIntegerField
      FieldName = 'ID'
    end
    object AdoQrySysVillageName: TStringField
      FieldName = 'VillageName'
      Size = 255
    end
  end
  object AdoQryCardWall: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_card')
    Left = 805
    Top = 107
    object AdoQryCardWallID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object AdoQryCardWallPersonName: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object AdoQryCardWallCardType: TIntegerField
      FieldName = 'CardType'
    end
    object AdoQryCardWallCardNO: TStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object AdoQryCardWallCardState: TIntegerField
      FieldName = 'CardState'
    end
    object AdoQryCardWallCardHex: TStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object AdoQryCardWallunitMac: TStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object AdoQryCardWalluserMac: TStringField
      FieldName = 'userMac'
      Size = 255
    end
    object AdoQryCardWalluser6: TStringField
      FieldName = 'user6'
      Size = 255
    end
    object AdoQryCardWallWallNO: TStringField
      FieldName = 'WallNO'
      Size = 255
    end
    object AdoQryCardWallCardMemo: TStringField
      FieldName = 'CardMemo'
      Size = 255
    end
  end
  object AdoQryValidTime: TADOQuery
    Connection = AdoCon
    Parameters = <>
    SQL.Strings = (
      'select * from t_card')
    Left = 176
    Top = 151
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'CardType'
      OnGetText = AdoQryRegCardsCardTypeGetText
    end
    object WideStringField1: TWideStringField
      FieldName = 'CardNO'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'CardState'
      OnGetText = AdoQryCardCardStateGetText
    end
    object WideStringField2: TWideStringField
      FieldName = 'CardHex'
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = 'unitMac'
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = 'userMac'
      Size = 255
    end
    object WideStringField5: TWideStringField
      FieldName = 'user6'
      Size = 255
    end
    object WideStringField6: TWideStringField
      FieldName = 'WallNO'
      Size = 255
    end
    object WideStringField7: TWideStringField
      FieldName = 'CardMemo'
      Size = 255
    end
    object StringField1: TStringField
      FieldName = 'PersonName'
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'ValidTime'
      Size = 255
    end
  end
  object Timer5: TTimer
    Enabled = False
    OnTimer = Timer5Timer
    Left = 637
    Top = 91
  end
  object pMenu_tree: TPopupMenu
    Left = 285
    Top = 83
    object tree_Del: TMenuItem
      Caption = #21024#38500
      OnClick = tree_DelClick
    end
  end
end
