inherited frm_ConsultaProdutos: Tfrm_ConsultaProdutos
  Caption = 'Consultar Produtos'
  ClientHeight = 419
  ClientWidth = 1026
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1026
    Height = 65
    ExplicitHeight = 65
    inherited txt_consultar: TEdit
      Left = 119
      Top = 14
      ExplicitLeft = 119
      ExplicitTop = 14
    end
    inherited btn_consultar: TButton
      Left = 360
      Top = 13
      OnClick = btn_consultarClick
      ExplicitLeft = 360
      ExplicitTop = 13
    end
    inherited cboc_filtro: TComboBox
      Left = 16
      Top = 14
      Width = 97
      Text = ''
      Items.Strings = (
        'C'#211'DIGO'
        'DESCRI'#199#195'O')
      ExplicitLeft = 16
      ExplicitTop = 14
      ExplicitWidth = 97
    end
    object Panel2: TPanel
      Left = 895
      Top = 1
      Width = 130
      Height = 63
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 891
      object btn_sair: TButton
        Left = 32
        Top = 13
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = btn_sairClick
      end
    end
    object btn_incluir: TButton
      Left = 504
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 4
      OnClick = btn_incluirClick
    end
    object btn_alterar: TButton
      Left = 600
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 5
      OnClick = btn_alterarClick
    end
    object btn_visualizar: TButton
      Left = 697
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 6
      OnClick = btn_visualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 65
    Width = 1026
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
  end
  inherited FD_qryConsultas: TFDQuery
    SQL.Strings = (
      'SELECT  P.codigo,'
      '        P.descricao,'
      '        P.unidade,'
      '        P.peso_liquido,'
      '        P.peso_bruto,'
      '        P.qtd,'
      '        P.custo,'
      '        P.valor_unitario,'
      '        F.fantasia FORNECEDOR'
      
        'FROM PRODUTOS P LEFT JOIN FORNECEDOR F ON F.controle_fornecedor ' +
        '= P.controle_fornecedor')
    object FD_qryConsultasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_qryConsultasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object FD_qryConsultasUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object FD_qryConsultasPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object FD_qryConsultasPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object FD_qryConsultasQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object FD_qryConsultasCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object FD_qryConsultasVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object FD_qryConsultasFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
