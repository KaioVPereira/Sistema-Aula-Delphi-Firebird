object LookUp: TLookUp
  Height = 517
  Width = 682
  object FD_qryEstados: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionLookup
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 592
    Top = 392
  end
  object ds_estados: TDataSource
    DataSet = FD_qryEstados
    Left = 592
    Top = 440
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
    Top = 440
  end
  object ds_cidades: TDataSource
    DataSet = FD_qryCidades
    Left = 488
    Top = 392
  end
end
