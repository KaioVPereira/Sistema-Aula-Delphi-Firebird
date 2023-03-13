object LookUp: TLookUp
  Height = 517
  Width = 682
  object FD_qryEstados: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 584
    Top = 448
  end
  object ds_estados: TDataSource
    DataSet = FD_qryEstados
    Left = 584
    Top = 392
  end
  object FD_TransactionLookup: TFDTransaction
    Connection = dm_Dados.fd_Connection
  end
  object FD_qryCidades: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 488
    Top = 448
  end
  object ds_cidades: TDataSource
    DataSet = FD_qryCidades
    Left = 488
    Top = 392
  end
  object ds_fornec: TDataSource
    DataSet = FD_qryFornec
    Left = 400
    Top = 392
  end
  object FD_qryFornec: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 400
    Top = 448
  end
end
