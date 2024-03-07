object Frm_CadFornecAPI: TFrm_CadFornecAPI
  Left = 0
  Top = 0
  Caption = 'Cadastro Fornecedor'
  ClientHeight = 399
  ClientWidth = 735
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
    Left = 19
    Top = 108
    Width = 71
    Height = 13
    Caption = 'Raz'#227'o Social'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 42
    Top = 139
    Width = 48
    Height = 13
    Caption = 'Fantasia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 63
    Top = 170
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 201
    Width = 65
    Height = 13
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 77
    Top = 232
    Width = 13
    Height = 13
    Caption = 'N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 71
    Top = 263
    Width = 20
    Height = 13
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 301
    Width = 54
    Height = 13
    Caption = 'Atividade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_consultarCNPJ: TButton
    Left = 192
    Top = 351
    Width = 137
    Height = 25
    Caption = 'Consutla CNPJ'
    TabOrder = 0
    OnClick = btn_consultarCNPJClick
  end
  object txt_CNPJ: TEdit
    Left = 344
    Top = 351
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object txt_razao: TEdit
    Left = 96
    Top = 96
    Width = 297
    Height = 21
    TabOrder = 2
  end
  object txt_fantasia: TEdit
    Left = 96
    Top = 127
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object txt_CNPJCad: TEdit
    Left = 96
    Top = 158
    Width = 297
    Height = 21
    TabOrder = 4
  end
  object txt_logradouro: TEdit
    Left = 96
    Top = 189
    Width = 297
    Height = 21
    TabOrder = 5
  end
  object txt_numero: TEdit
    Left = 96
    Top = 220
    Width = 297
    Height = 21
    TabOrder = 6
  end
  object txt_CEP: TEdit
    Left = 97
    Top = 251
    Width = 297
    Height = 21
    TabOrder = 7
  end
  object txt_atividade: TEdit
    Left = 3
    Top = 320
    Width = 550
    Height = 21
    TabOrder = 8
  end
  object Memo1: TMemo
    Left = 440
    Top = 96
    Width = 265
    Height = 180
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 224
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 136
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    Left = 48
    Top = 16
  end
end
