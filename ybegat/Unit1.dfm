object Form1: TForm1
  Left = 193
  Top = 169
  Width = 928
  Height = 480
  Anchors = [akRight, akBottom]
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 360
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnMouseMove = Button1MouseMove
  end
  object Button2: TButton
    Left = 256
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
end
