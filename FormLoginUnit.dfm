object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object btnOk: TButton
    Left = 144
    Top = 184
    Width = 369
    Height = 49
    Caption = 'Ok'
    TabOrder = 0
    OnClick = btnOkClick
  end
end
