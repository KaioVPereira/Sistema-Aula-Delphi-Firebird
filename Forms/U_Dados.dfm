object dm_Dados: Tdm_Dados
  OnCreate = DataModuleCreate
  Height = 270
  Width = 503
  object fd_Connection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\kaioV\OneDrive\Documentos\Embarcadero\Studio\P' +
        'rojects\Sistema-Aula-Delphi-Firebird\BANCOAULA.IB'
      'User_Name=SYSDBA'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3051'
      'Password=masterkey'
      'DriverID=FB')
    Left = 40
    Top = 8
  end
end
