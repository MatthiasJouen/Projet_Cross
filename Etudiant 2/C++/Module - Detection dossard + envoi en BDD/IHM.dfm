object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 467
  ClientWidth = 1022
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Resultat: TLabel
    Left = 8
    Top = 48
    Width = 98
    Height = 16
    Caption = 'Liste des courses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BDDPanel: TLabel
    Left = 39
    Top = 14
    Width = 20
    Height = 13
    Caption = 'BDD'
    Color = clRed
    ParentColor = False
  end
  object Label1: TLabel
    Left = 8
    Top = 227
    Width = 83
    Height = 16
    Caption = 'Course choisie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 48
    Width = 120
    Height = 16
    Caption = 'Nom des participants'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelAssocier: TLabel
    Left = 312
    Top = 384
    Width = 373
    Height = 18
    Caption = 'Choisir un participant et un dossard et cliquer sur associer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel: TPanel
    Left = 8
    Top = 8
    Width = 25
    Height = 25
    Color = clRed
    ParentBackground = False
    TabOrder = 0
  end
  object ListBoxNomCourse: TListBox
    Left = 8
    Top = 67
    Width = 129
    Height = 102
    ItemHeight = 13
    TabOrder = 1
  end
  object ValiderCourse: TButton
    Left = 8
    Top = 175
    Width = 129
    Height = 25
    Caption = 'Valider ce choix'
    TabOrder = 2
    OnClick = ValiderCourseClick
  end
  object MemoCourseChoisie: TMemo
    Left = 8
    Top = 246
    Width = 129
    Height = 59
    TabOrder = 3
  end
  object ListBoxNom: TListBox
    Left = 344
    Top = 70
    Width = 129
    Height = 130
    ItemHeight = 13
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 907
    Top = 8
    Width = 105
    Height = 73
    TabOrder = 5
  end
  object ListBoxDossard: TListBox
    Left = 907
    Top = 236
    Width = 105
    Height = 37
    ItemHeight = 13
    TabOrder = 6
  end
  object NouveauDossard: TButton
    Left = 907
    Top = 205
    Width = 105
    Height = 25
    Caption = 'Nouveau Dossard'
    TabOrder = 7
    OnClick = NouveauDossardClick
  end
  object Button1: TButton
    Left = 440
    Top = 408
    Width = 121
    Height = 45
    Caption = 'Association'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 872
    Top = 8
  end
end
