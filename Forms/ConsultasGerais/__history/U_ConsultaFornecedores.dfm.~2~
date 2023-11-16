inherited frm_ConsultaFornecedor: Tfrm_ConsultaFornecedor
  Caption = 'Consulta Fornecedores'
  ClientHeight = 419
  ClientWidth = 686
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 702
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 686
    Height = 65
    ExplicitWidth = 120
    ExplicitHeight = 65
    inherited txt_consultar: TEdit
      Left = 120
      Top = 18
      ExplicitLeft = 120
      ExplicitTop = 18
    end
    inherited btn_consultar: TButton
      Left = 376
      Top = 17
      OnClick = btn_consultarClick
      ExplicitLeft = 376
      ExplicitTop = 17
    end
    inherited cboc_filtro: TComboBox
      Text = ''
      Items.Strings = (
        'CONTROLE'
        'RAZ'#195'O SOCIAL'
        'FANTASIA'
        'CNPJ'
        'E-MAIL'
        'UF'
        'CIDADE')
    end
    object Panel2: TPanel
      Left = 543
      Top = 1
      Width = 142
      Height = 63
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = -23
      object btn_sar: TButton
        Left = 48
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = btn_sarClick
      end
    end
    object btn_incluir: TButton
      Left = 528
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 4
      OnClick = btn_incluirClick
    end
    object btn_alterar: TButton
      Left = 609
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 5
      OnClick = btn_alterarClick
    end
    object btn_visualzar: TButton
      Left = 690
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 6
      OnClick = btn_visualzarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 65
    Width = 686
    Height = 354
    Align = alClient
    DataSource = DS_Consultas
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE_FORNECEDOR'
        Title.Caption = 'CONTROLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end>
  end
  inherited FD_qryConsultas: TFDQuery
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
  end
end
