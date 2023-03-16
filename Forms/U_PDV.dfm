inherited frm_CadastroVendas: Tfrm_CadastroVendas
  Caption = 'PDV'
  ClientHeight = 481
  ClientWidth = 849
  ExplicitWidth = 861
  ExplicitHeight = 519
  TextHeight = 15
  inherited pn_cabecalho: TPanel
    Width = 849
    ExplicitWidth = 845
    inherited btn_sair: TBitBtn
      Left = 773
      Top = 1
      Height = 39
      Align = alRight
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 41
    Width = 849
    Height = 160
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 103
      Height = 15
      Caption = 'CONTROLE_VENDA'
    end
    object Label2: TLabel
      Left = 184
      Top = 6
      Width = 109
      Height = 15
      Caption = 'CONTROLE_CLIENTE'
    end
    object Label3: TLabel
      Left = 352
      Top = 6
      Width = 60
      Height = 15
      Caption = 'DATA_MOV'
    end
    object Label4: TLabel
      Left = 543
      Top = 6
      Width = 82
      Height = 15
      Caption = 'DATA_EMISSAO'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 62
      Height = 15
      Caption = 'PRODUTOS:'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 680
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Faturado'
      DataField = 'SITUACAO'
      DataSource = ds_cadastros
      TabOrder = 0
    end
    object txt_venda: TDBEdit
      Left = 8
      Top = 24
      Width = 103
      Height = 23
      DataField = 'CONTROLE_VENDA'
      DataSource = ds_cadastros
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 184
      Top = 24
      Width = 121
      Height = 23
      DataField = 'CONTROLE_CLIENTE'
      DataSource = ds_cadastros
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 352
      Top = 24
      Width = 97
      Height = 23
      DataField = 'DATA_MOV'
      DataSource = ds_cadastros
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 543
      Top = 24
      Width = 89
      Height = 23
      DataField = 'DATA_EMISSAO'
      DataSource = ds_cadastros
      TabOrder = 4
    end
    object txt_Produto: TDBEdit
      Left = 8
      Top = 81
      Width = 103
      Height = 23
      TabOrder = 5
    end
  end
  object dbgr_itens: TDBGrid [2]
    Left = 0
    Top = 201
    Width = 849
    Height = 280
    Align = alClient
    DataSource = ds_vendasItem
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDAS_HEADER_CONTROLE'
    UpdateOptions.AutoIncFields = 'VENDAS_HEADER_CONTROLE'
    SQL.Strings = (
      'SELECT * FROM VENDAS_HEADER')
    Left = 728
    Top = 448
    object fd_QueryCadastroCONTROLE_VENDA: TIntegerField
      FieldName = 'CONTROLE_VENDA'
      Origin = 'CONTROLE_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fd_QueryCadastroCONTROLE_CLIENTE: TIntegerField
      FieldName = 'CONTROLE_CLIENTE'
      Origin = 'CONTROLE_CLIENTE'
    end
    object fd_QueryCadastroDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = 'DATA_MOV'
    end
    object fd_QueryCadastroSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object fd_QueryCadastroDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
  end
  inherited fd_UpdCadastros: TFDUpdateSQL
    Left = 720
    Top = 280
  end
  inherited fd_transaction: TFDTransaction
    Left = 720
    Top = 392
  end
  inherited ds_cadastros: TDataSource
    Left = 720
    Top = 336
  end
  object fdqry_VendasItem: TFDQuery
    Active = True
    Connection = dm_Dados.fd_Connection
    Transaction = fd_transaction
    SQL.Strings = (
      'SELECT * FROM VENDAS_ITENS')
    Left = 720
    Top = 208
  end
  object ds_vendasItem: TDataSource
    DataSet = fdqry_VendasItem
    Left = 632
    Top = 208
  end
end
