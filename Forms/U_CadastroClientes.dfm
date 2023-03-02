inherited frm_CadClientes: Tfrm_CadClientes
  Caption = 'Cadastro de Clientes'
  ClientWidth = 791
  ExplicitWidth = 803
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 0
    Top = 47
    Width = 115
    Height = 15
    Caption = 'CONTROLE_CLIENTES'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 144
    Top = 47
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 368
    Top = 47
    Width = 52
    Height = 15
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 641
    Top = 48
    Width = 150
    Height = 15
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 584
    Top = 47
    Width = 40
    Height = 15
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 0
    Top = 97
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [6]
    Left = 224
    Top = 97
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 547
    Top = 97
    Width = 21
    Height = 15
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 0
    Top = 147
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 320
    Top = 147
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 547
    Top = 147
    Width = 87
    Height = 15
    Caption = 'COMPLEMENTO'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 733
    Top = 147
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [12]
    Left = 0
    Top = 197
    Width = 29
    Height = 15
    Caption = 'IE_RG'
    FocusControl = DBEdit12
  end
  inherited pn_cabecalho: TPanel
    Width = 791
    inherited btn_sair: TBitBtn
      Left = 716
      Top = 1
      ExplicitLeft = 716
      ExplicitTop = 1
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 0
    Top = 68
    Width = 103
    Height = 23
    DataField = 'CONTROLE_CLIENTES'
    DataSource = ds_cadastros
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [15]
    Left = 144
    Top = 68
    Width = 200
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [16]
    Left = 368
    Top = 68
    Width = 200
    Height = 23
    DataField = 'FANTASIA'
    DataSource = ds_cadastros
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [17]
    Left = 641
    Top = 68
    Width = 150
    Height = 23
    DataField = 'CPF_CNPJ'
    DataSource = ds_cadastros
    TabOrder = 4
  end
  object txt_tipopessoa: TDBComboBox [18]
    Left = 584
    Top = 68
    Width = 41
    Height = 23
    DataField = 'TIPO_FJ'
    DataSource = ds_cadastros
    Items.Strings = (
      'F'
      'J')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [19]
    Left = 0
    Top = 118
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [20]
    Left = 224
    Top = 118
    Width = 300
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_cadastros
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [21]
    Left = 547
    Top = 118
    Width = 236
    Height = 23
    DataField = 'SITE'
    DataSource = ds_cadastros
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [22]
    Left = 0
    Top = 168
    Width = 300
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_cadastros
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [23]
    Left = 320
    Top = 168
    Width = 200
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_cadastros
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [24]
    Left = 547
    Top = 168
    Width = 174
    Height = 23
    DataField = 'COMPLEMENTO'
    DataSource = ds_cadastros
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [25]
    Left = 733
    Top = 168
    Width = 50
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_cadastros
    TabOrder = 12
  end
  object DBEdit12: TDBEdit [26]
    Left = 0
    Top = 218
    Width = 156
    Height = 23
    DataField = 'IE_RG'
    DataSource = ds_cadastros
    TabOrder = 13
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTES_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_CLIENTES'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM CLIENTES ')
    Left = 368
    Top = 248
    object fd_QueryCadastroCONTROLE_CLIENTES: TIntegerField
      FieldName = 'CONTROLE_CLIENTES'
      Origin = 'CONTROLE_CLIENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fd_QueryCadastroRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fd_QueryCadastroFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fd_QueryCadastroCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fd_QueryCadastroTIPO_FJ: TStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fd_QueryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fd_QueryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fd_QueryCadastroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fd_QueryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fd_QueryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fd_QueryCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 255
    end
    object fd_QueryCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fd_QueryCadastroIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
      Size = 30
    end
    object fd_QueryCadastroDT_EXLUIDO: TDateField
      FieldName = 'DT_EXLUIDO'
      Origin = 'DT_EXLUIDO'
    end
  end
  inherited fd_UpdCadastros: TFDUpdateSQL
    Left = 472
    Top = 248
  end
  inherited fd_transaction: TFDTransaction
    Top = 248
  end
  inherited ds_cadastros: TDataSource
    Left = 248
    Top = 248
  end
end
