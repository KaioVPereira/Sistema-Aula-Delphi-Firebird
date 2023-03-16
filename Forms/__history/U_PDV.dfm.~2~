inherited frm_CadastroVendas: Tfrm_CadastroVendas
  Caption = 'PDV'
  ClientHeight = 481
  ClientWidth = 849
  ExplicitWidth = 865
  ExplicitHeight = 520
  TextHeight = 15
  inherited pn_cabecalho: TPanel
    Width = 849
    ExplicitWidth = 618
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 41
    Width = 849
    Height = 168
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 33
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
    object DBCheckBox1: TDBCheckBox
      Left = 680
      Top = 30
      Width = 97
      Height = 17
      Caption = 'DBCheckBox1'
      TabOrder = 0
    end
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDAS_HEADER_CONTROLE'
    UpdateOptions.AutoIncFields = 'VENDAS_HEADER_CONTROLE'
    SQL.Strings = (
      'SELECT * FROM VENDAS_HEADER')
    Left = 464
    Top = 344
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
    Left = 536
    Top = 328
  end
  inherited fd_transaction: TFDTransaction
    Left = 632
    Top = 336
  end
  inherited ds_cadastros: TDataSource
    Left = 704
    Top = 344
  end
end
