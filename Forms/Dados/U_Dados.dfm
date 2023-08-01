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
    Left = 40
    Top = 96
  end
  object FDQry_VendasQuery: TFDQuery
    Connection = fd_Connection
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
    Connection = fd_Connection
    Left = 32
    Top = 168
  end
  object FDQry_VendasItens: TFDQuery
    Connection = fd_Connection
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
    object FDQry_VendasItensVALORTOTAL: TSingleField
      FieldName = 'VALOR TOTAL'
      Origin = '"VALOR TOTAL"'
    end
    object FDQry_VendasItensREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Required = True
    end
    object FDQry_VendasItensTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
      Origin = 'TERMINAL'
    end
  end
  object DS_VendasItens: TDataSource
    DataSet = FDQry_VendasItens
    Left = 280
    Top = 168
  end
end
