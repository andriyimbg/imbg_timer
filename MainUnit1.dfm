object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 549
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 344
    Top = 32
    Width = 237
    Height = 13
    Caption = 'http://localhost:58080/start?start=1&section=121'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 530
    Width = 790
    Height = 19
    Panels = <>
    ExplicitLeft = 168
    ExplicitTop = 200
    ExplicitWidth = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 96
    Width = 774
    Height = 409
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Timer1: TTimer
    Left = 24
    Top = 24
  end
  object IdHTTPServer1: TIdHTTPServer
    OnStatus = IdHTTPServer1Status
    Active = True
    Bindings = <>
    DefaultPort = 58080
    OnConnect = IdHTTPServer1Connect
    OnDisconnect = IdHTTPServer1Disconnect
    AutoStartSession = True
    KeepAlive = True
    OnCreateSession = IdHTTPServer1CreateSession
    OnSessionStart = IdHTTPServer1SessionStart
    OnSessionEnd = IdHTTPServer1SessionEnd
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 96
    Top = 24
  end
end
