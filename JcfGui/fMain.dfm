object frmMain: TfrmMain
  Left = 205
  Top = 224
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'JEDI Code Format'
  ClientHeight = 557
  ClientWidth = 648
  Color = clBtnFace
  Constraints.MinHeight = 369
  Constraints.MinWidth = 492
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Menu = mnuMain
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 20
  object lblLog: TLabel
    Left = 8
    Top = 207
    Width = 25
    Height = 20
    Caption = 'Log'
  end
  object tlbTop: TToolBar
    Left = 0
    Top = 0
    Width = 648
    Height = 26
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    EdgeBorders = [ebTop, ebBottom]
    EdgeOuter = esNone
    Images = ilStandardImages
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object tbtnOpenFiles: TToolButton
      Left = 0
      Top = 0
      Hint = 'Select a source file'
      Action = aOpenFiles
    end
    object tbtnToolButton8: TToolButton
      Left = 24
      Top = 0
      Width = 8
      Caption = 'tbtnToolButton8'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object btnGo: TToolButton
      Left = 32
      Top = 0
      Action = aGo
    end
    object tbtnToolButton2: TToolButton
      Left = 56
      Top = 0
      Width = 8
      Caption = 'tbtnToolButton2'
      ImageIndex = 51
      Style = tbsSeparator
    end
    object btnSettings: TToolButton
      Left = 64
      Top = 0
      Action = aOptions
    end
    object tbtnToolButton6: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'tbtnToolButton6'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbHelp: TToolButton
      Left = 96
      Top = 0
      Action = actHelpContents
    end
    object btnAbout: TToolButton
      Left = 120
      Top = 0
      Action = aAbout
    end
    object tbtnToolButton4: TToolButton
      Left = 144
      Top = 0
      Width = 16
      Caption = 'Spacer'
      ImageIndex = 51
      Style = tbsSeparator
    end
    object btnClose: TToolButton
      Left = 160
      Top = 0
      Action = aExit
    end
  end
  object mOutput: TJvMemo
    Left = 0
    Top = 226
    Width = 648
    Height = 331
    ClipboardCommands = [caCopy]
    Align = alClient
    ParentColor = True
    ReadOnly = True
    TabOrder = 2
  end
  inline frBasic: TfrBasic
    Left = 0
    Top = 26
    Width = 648
    Height = 200
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = True
    ExplicitTop = 26
    ExplicitWidth = 648
    ExplicitHeight = 200
    inherited sbOpen: TSpeedButton [0]
      Left = 604
      Top = 103
      Width = 29
      OnClick = frBasicsbOpenClick
      ExplicitLeft = 604
      ExplicitTop = 103
      ExplicitWidth = 29
    end
    inherited lblOutput: TLabel [1]
      Left = 5
      Top = 139
      ExplicitLeft = 5
      ExplicitTop = 139
    end
    inherited lblInput: TLabel [2]
      Left = 5
      Top = 108
      ExplicitLeft = 5
      ExplicitTop = 108
    end
    inherited edtOutput: TEdit [3]
      Left = 112
      Top = 139
      Width = 521
      ExplicitLeft = 112
      ExplicitTop = 139
      ExplicitWidth = 521
    end
    inherited edtInput: TEdit [4]
      Left = 112
      Top = 103
      Width = 487
      ExplicitLeft = 112
      ExplicitTop = 103
      ExplicitWidth = 487
    end
    inherited rgBackup: TRadioGroup [5]
      Left = 328
      Top = 5
      Width = 305
      Height = 90
      ExplicitLeft = 328
      ExplicitTop = 5
      ExplicitWidth = 305
      ExplicitHeight = 90
    end
    inherited rgFileRecurse: TRadioGroup [6]
      Left = 5
      Top = 5
      Width = 318
      Height = 90
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 318
      ExplicitHeight = 90
    end
    inherited dlgOpen: TOpenDialog
      Left = 548
      Top = 116
    end
    inherited JvBrowseForFolderDialog1: TJvBrowseForFolderDialog
      Left = 464
      Top = 120
    end
  end
  object mnuMain: TMainMenu
    Images = ilStandardImages
    Left = 160
    Top = 242
    object mnuFile: TMenuItem
      Caption = '&File'
      object mnuGo: TMenuItem
        Action = aGo
      end
      object OpenFile1: TMenuItem
        Action = aOpenFiles
        Caption = '&Open File...'
      end
      object mnuViewLog: TMenuItem
        Caption = 'View Last &Log'
        OnClick = mnuViewLogClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnuClose: TMenuItem
        Action = aExit
      end
    end
    object mnuSettings: TMenuItem
      Caption = '&Settings'
      object mnuRegistrySettings: TMenuItem
        Caption = '&Registry Settings...'
        OnClick = mnuRegistrySettingsClick
      end
      object mnuFormatSettings: TMenuItem
        Action = aOptions
        Caption = '&Format Settings...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuSaveSettingsAs: TMenuItem
        Action = aSaveSettingsAs
      end
    end
    object mnuHelp: TMenuItem
      Caption = '&Help'
      object mnuContents: TMenuItem
        Action = actHelpContents
      end
      object mnuAbout: TMenuItem
        Action = aAbout
      end
    end
  end
  object ilStandardImages: TImageList
    AllocBy = 128
    Left = 81
    Top = 237
    Bitmap = {
      494C010106000900800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
      C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400848484008484840084848400FFFF
      FF0084848400FFFFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000000000000000000000000000848484008400840084008400FFFF
      FF00FFFFFF000000000000000000840084008400840000000000C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000008484840084008400FFFFFF000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000840000000000000000000000000000008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00840000000000000000000000000000000000000084008400FFFFFF008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      8400840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000084008400FFFF
      FF0084008400840084008400840084008400840084000084840000FFFF0000FF
      FF00840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      8400FFFFFF00840084008400840084008400008484008400840000FFFF0000FF
      FF00840084008400840084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00840084008400840000FFFF0000FFFF0000FFFF008400
      8400840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF00840084008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400FFFFFF008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
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
      0000000000000000000000000000840000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000000000000840000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000FF0000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084848400000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000FFFF000000000000000000FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C60000FF0000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000000000FFFFFF00000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000FF0000C6C6C60000FF0000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000848484000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C60000FF0000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000FF0000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FF0000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000848484000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF000000FFFF000000000000FE3F00000000
      0000F81F00000000E007E00F00000000E007800700000000E007000300000000
      E007000100000000E007000000000000E007000100000000E007800100000000
      E007C00100000000FFFFE00000000000F81FF00000000000F81FF80300000000
      F81FFC0F00000000FFFFFE3F00000000FFFFFFFFFFFFFFFFFFFFF3FFFE1F8001
      001FF1FFFC5F8001000FF0FFFC7F80010007F07FFC3F80010003F03FFC3F8001
      0001F01FFC3F80010000F00FFE1F8001001FF00FFF1F8001001FF01FFD1F8001
      001FF03FFC1F80018FF1F07FFFFF8001FFF9F0FFFE1F8001FF75F1FFFE1F8001
      FF8FF3FFFE1FC0FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList: TActionList
    Images = ilStandardImages
    Left = 209
    Top = 241
    object aOpenFiles: TAction
      Caption = '&Open File'
      Hint = 'Open Files'
      ImageIndex = 0
      ShortCut = 16463
      OnExecute = aOpenFilesExecute
    end
    object aOptions: TAction
      Caption = '&Settings'
      Hint = 'Settings'
      ImageIndex = 3
      OnExecute = aOptionsExecute
    end
    object aGo: TAction
      Caption = '&Run'
      Hint = 'Format File'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = aFormatExecute
    end
    object aAbout: TAction
      Caption = '&About'
      Hint = 'About Me'
      ImageIndex = 2
      ShortCut = 16457
      OnExecute = aAboutExecue
    end
    object aExit: TAction
      Caption = '&Exit'
      Hint = 'Exit'
      ImageIndex = 4
      OnExecute = aExitExecute
    end
    object actHelpContents: THelpContents
      Category = 'Help'
      Caption = '&Contents'
      Hint = 'Help Contents'
      ImageIndex = 5
      OnExecute = actHelpContentsExecute
    end
    object aSaveSettingsAs: TAction
      Category = 'Settings'
      Caption = 'Save Settings &As...'
      Hint = 'Save a copy of format settings to a named file'
      OnExecute = mnuSaveSettingsAsClick
    end
  end
  object dlgSaveConfig: TSaveDialog
    Left = 324
    Top = 244
  end
  object mruFiles: TJvMRUManager
    Duplicates = dupIgnore
    AccelDelimiter = adSpace
    Capacity = 9
    RecentMenu = mnuFile
    OnClick = mruFilesClick
    Left = 269
    Top = 244
  end
  object dlgOpen: TOpenDialog
    DefaultExt = '*.pas'
    Filter = 
      'Delphi Source|*.pas|Delphi Project Source|*.dpr|text file|*.txt|' +
      'All files|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select a Delphi source file'
    Left = 20
    Top = 236
  end
  object JvFormStorage1: TJvFormStorage
    AppStoragePath = 'frmMain\'
    StoredValues = <>
    Left = 396
    Top = 244
  end
end
