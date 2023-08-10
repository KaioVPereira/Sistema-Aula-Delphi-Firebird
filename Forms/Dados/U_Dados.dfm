object dm_Dados: Tdm_Dados
  OnCreate = DataModuleCreate
  Height = 617
  Width = 918
  object fd_Connection: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3051'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\SCL\Sistema-Aula-Delphi-Firebird\BANCOAULA.IB'
      'DriverID=FB')
    Connected = True
    Left = 40
    Top = 8
  end
  object FTB_VendasHeader: TFDTable
    Connection = fd_Connection
    TableName = 'VENDAS_HEADER'
    Left = 40
    Top = 96
  end
  object FDQry_VendasQuery: TFDQuery
    Connection = fd_Connection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDAS_HEADER_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_VENDA'
    SQL.Strings = (
      'SELECT * FROM VENDAS_HEADER')
    Left = 160
    Top = 96
    object FDQry_VendasQueryCONTROLE_VENDA: TIntegerField
      FieldName = 'CONTROLE_VENDA'
      Origin = 'CONTROLE_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_VendasQueryCONTROLE_CLIENTE: TIntegerField
      FieldName = 'CONTROLE_CLIENTE'
      Origin = 'CONTROLE_CLIENTE'
    end
    object FDQry_VendasQueryDATA_MOV: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA_MOV'
      Origin = 'DATA_MOV'
    end
    object FDQry_VendasQuerySITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 1
    end
    object FDQry_VendasQueryDATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object FDQry_VendasQueryDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQry_VendasQueryCONTROLE_FUNC: TIntegerField
      DisplayLabel = 'Controle Funcion'#225'rio'
      FieldName = 'CONTROLE_FUNC'
      Origin = 'CONTROLE_FUNC'
    end
    object FDQry_VendasQueryNOME_FUNC: TStringField
      DisplayLabel = 'Nome Funcionario'
      FieldName = 'NOME_FUNC'
      Origin = 'NOME_FUNC'
      Size = 60
    end
    object FDQry_VendasQuerySUBTOTAL: TSingleField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      currency = True
    end
    object FDQry_VendasQueryTOTAL: TSingleField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      currency = True
    end
    object FDQry_VendasQueryTERMINAL: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
    end
  end
  object DS_Vendas: TDataSource
    DataSet = FDQry_VendasQuery
    Left = 280
    Top = 96
  end
  object FTB_VendasItens: TFDTable
    MasterSource = DS_VendasItens
    Connection = fd_Connection
    TableName = 'VENDAS_ITENS'
    Left = 32
    Top = 168
  end
  object FDQry_VendasItens: TFDQuery
    Connection = fd_Connection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDAS_ITENS_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_VENDA_ITEM'
    SQL.Strings = (
      '       SELECT * FROM VENDAS_ITENS')
    Left = 160
    Top = 168
    object FDQry_VendasItensCONTROLE_VENDA_ITEM: TIntegerField
      FieldName = 'CONTROLE_VENDA_ITEM'
      Origin = 'CONTROLE_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_VendasItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object FDQry_VendasItensQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object FDQry_VendasItensVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object FDQry_VendasItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object FDQry_VendasItensCONTROLE_VENDA: TIntegerField
      FieldName = 'CONTROLE_VENDA'
      Origin = 'CONTROLE_VENDA'
    end
    object FDQry_VendasItensDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQry_VendasItensTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
    end
    object FDQry_VendasItensVALOR_TOTAL: TSingleField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
    object FDQry_VendasItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
  end
  object DS_VendasItens: TDataSource
    DataSet = FDQry_VendasItens
    Left = 280
    Top = 168
  end
  object FDQry_Produtos: TFDQuery
    Connection = fd_Connection
    SQL.Strings = (
      'SELECT * FROM PRODUTOS WHERE REFERENCIA = :REFERENCIA')
    Left = 160
    Top = 240
    ParamData = <
      item
        Name = 'REFERENCIA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQry_ProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQry_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object FDQry_ProdutosDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object FDQry_ProdutosCOLECAO: TIntegerField
      FieldName = 'COLECAO'
      Origin = 'COLECAO'
    end
    object FDQry_ProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object FDQry_ProdutosLINHA: TIntegerField
      FieldName = 'LINHA'
      Origin = 'LINHA'
    end
    object FDQry_ProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
    object FDQry_ProdutosUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object FDQry_ProdutosPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object FDQry_ProdutosPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object FDQry_ProdutosCONTROLE_FORNECEDOR: TIntegerField
      FieldName = 'CONTROLE_FORNECEDOR'
      Origin = 'CONTROLE_FORNECEDOR'
    end
    object FDQry_ProdutosQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object FDQry_ProdutosCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object FDQry_ProdutosVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object FDQry_ProdutosDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object FDQry_ProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Required = True
      Size = 50
    end
    object FDQry_ProdutosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      Origin = 'IMAGEM'
    end
  end
  object DS_Produtos: TDataSource
    DataSet = FDQry_Produtos
    Left = 280
    Top = 240
  end
end
