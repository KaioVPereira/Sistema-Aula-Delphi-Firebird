object LookUp: TLookUp
  Height = 839
  Width = 1133
  object FD_qryEstados: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 168
    Top = 144
  end
  object ds_estados: TDataSource
    DataSet = FD_qryEstados
    Left = 168
    Top = 72
  end
  object FD_TransactionLookup: TFDTransaction
    Connection = dm_Dados.fd_Connection
  end
  object FD_qryCidades: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 80
    Top = 144
  end
  object ds_cidades: TDataSource
    DataSet = FD_qryCidades
    Left = 80
    Top = 72
  end
  object ds_fornec: TDataSource
    DataSet = FD_qryFornec
    Left = 8
    Top = 72
  end
  object FD_qryFornec: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 8
    Top = 144
  end
  object FD_qryClientes: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT CONTROLE_CLIENTES,'
      '       DECODE (TIPO_FJ, '#39'J'#39', FANTASIA, NOME) NomeClientes'
      ' '
      ' FROM CLIENTES ')
    Left = 248
    Top = 144
  end
  object ds_Clientes: TDataSource
    DataSet = FD_qryClientes
    Left = 248
    Top = 72
  end
  object FD_qryProdutos: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT CODIGO,'
      '       DESCRICAO,'
      '       VALOR_UNITARIO'
      'FROM PRODUTOS')
    Left = 336
    Top = 144
    object FD_qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_qryProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object FD_qryProdutosVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
  end
  object ds_produtos: TDataSource
    DataSet = FD_qryProdutos
    Left = 336
    Top = 72
  end
end
