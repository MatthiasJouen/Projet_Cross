object PanelArche: TPanelArche
  Left = 0
  Top = 0
  Caption = 'PanelArche'
  ClientHeight = 300
  ClientWidth = 635
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object infos: TLabel
    Left = 152
    Top = 45
    Width = 126
    Height = 18
    Caption = 'R'#233'sultats de l'#39'arche'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object labelCo: TLabel
    Left = 8
    Top = 5
    Width = 94
    Height = 13
    Caption = 'Connexion '#224' l'#39'arche'
  end
  object Memo1: TMemo
    Left = 152
    Top = 69
    Width = 273
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 24
    Width = 33
    Height = 33
    Color = clRed
    ParentBackground = False
    TabOrder = 1
  end
  object TCPArche: TIdTCPClient
    OnConnected = TCPArcheConnected
    ConnectTimeout = 0
    Host = '192.168.65.80'
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 584
    Top = 16
  end
end