object Frm_login: TFrm_login
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 198
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object LB_senha: TLabel
    Left = 137
    Top = 109
    Width = 37
    Height = 13
    Caption = 'SENHA:'
  end
  object LB_nome: TLabel
    Left = 137
    Top = 48
    Width = 35
    Height = 13
    Caption = 'LOGIN:'
  end
  object txt_login: TEdit
    Left = 96
    Top = 59
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object txt_senha: TEdit
    Left = 96
    Top = 120
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btn_logar: TButton
    Left = 184
    Top = 163
    Width = 75
    Height = 25
    Caption = 'LOGAR'
    TabOrder = 2
    OnClick = btn_logarClick
  end
  object btn_cancelar: TButton
    Left = 64
    Top = 163
    Width = 75
    Height = 25
    Caption = 'CANCELAR'
    TabOrder = 3
    OnClick = btn_cancelarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 33
    Align = alTop
    Caption = 'TELA DE LOGIN'
    TabOrder = 4
  end
  object fd_QueryLogin: TFDQuery
    Connection = dm_Dados.fd_Connection
    SQL.Strings = (
      'SELECT LOGIN,'
      '       SENHA '
      'FROM USUARIO'
      'WHERE LOGIN = :LOGIN')
    Left = 264
    Top = 96
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
  end
end
