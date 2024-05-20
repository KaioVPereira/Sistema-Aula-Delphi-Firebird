object Frm_CadFornecAPI: TFrm_CadFornecAPI
  Left = 0
  Top = 0
  Caption = 'Cadastro Fornecedor'
  ClientHeight = 353
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Memo1: TMemo
    Left = 712
    Top = 149
    Width = 265
    Height = 180
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 751
    Height = 353
    ActivePage = DadosBasicos
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 786
    ExplicitHeight = 394
    object DadosBasicos: TTabSheet
      Caption = 'Dados B'#225'sicos'
      object Label8: TLabel
        Left = 15
        Top = 103
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
      object Label9: TLabel
        Left = 38
        Top = 140
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
      object Label10: TLabel
        Left = 59
        Top = 177
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
      object Label14: TLabel
        Left = 432
        Top = 81
        Width = 132
        Height = 13
        Caption = 'Atividades Secund'#225'rias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 52
        Top = 220
        Width = 35
        Height = 13
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 43
        Top = 258
        Width = 44
        Height = 13
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Btn_ConsultaCNPJpg: TButton
        Left = 16
        Top = 18
        Width = 137
        Height = 25
        Caption = 'Consutla CNPJ'
        TabOrder = 0
        OnClick = Btn_ConsultaCNPJpgClick
      end
      object txt_CNPJPG: TEdit
        Left = 179
        Top = 20
        Width = 209
        Height = 21
        TabOrder = 1
      end
      object txt_razaoPG: TEdit
        Left = 91
        Top = 96
        Width = 297
        Height = 21
        TabOrder = 2
      end
      object txt_fantasiaPG: TEdit
        Left = 92
        Top = 134
        Width = 297
        Height = 21
        TabOrder = 3
      end
      object txt_CNPJCadPG: TEdit
        Left = 92
        Top = 169
        Width = 297
        Height = 21
        TabOrder = 4
      end
      object Memo2: TMemo
        Left = 432
        Top = 100
        Width = 265
        Height = 180
        Lines.Strings = (
          '')
        TabOrder = 5
      end
      object Txt_EmailPG: TEdit
        Left = 92
        Top = 212
        Width = 297
        Height = 21
        TabOrder = 6
      end
      object txt_NumeroPG: TEdit
        Left = 160
        Top = 254
        Width = 228
        Height = 21
        TabOrder = 7
      end
      object txt_DDDPG: TEdit
        Left = 93
        Top = 254
        Width = 49
        Height = 21
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'os'
      ImageIndex = 1
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 528
    Top = 40
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 600
    Top = 40
  end
  object RESTResponse1: TRESTResponse
    Left = 448
    Top = 40
  end
end
