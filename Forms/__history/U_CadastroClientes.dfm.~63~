inherited frm_CadClientes: Tfrm_CadClientes
  Caption = 'Cadastro de Clientes'
  ClientWidth = 791
  OnShow = FormShow
  ExplicitWidth = 803
  TextHeight = 15
  object lb_controle: TLabel [0]
    Left = 8
    Top = 47
    Width = 63
    Height = 15
    Caption = 'CONTROLE:'
    FocusControl = txt_controle
  end
  object Label2: TLabel [1]
    Left = 144
    Top = 47
    Width = 85
    Height = 15
    Caption = 'RAZAO SOCIAL:'
    FocusControl = txt_razao
  end
  object Label3: TLabel [2]
    Left = 362
    Top = 47
    Width = 55
    Height = 15
    Caption = 'FANTASIA:'
    FocusControl = txt_fantasia
  end
  object Label4: TLabel [3]
    Left = 681
    Top = 48
    Width = 56
    Height = 15
    Caption = 'CPF/CNPJ:'
    FocusControl = txt_CNPJCPF
  end
  object Label5: TLabel [4]
    Left = 568
    Top = 47
    Width = 90
    Height = 15
    Caption = 'TIPO DE PESSOA:'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 97
    Width = 38
    Height = 15
    Caption = 'NOME:'
    FocusControl = txt_nome
  end
  object Label7: TLabel [6]
    Left = 224
    Top = 97
    Width = 42
    Height = 15
    Caption = 'E-MAIL:'
    FocusControl = txt_email
  end
  object Label8: TLabel [7]
    Left = 547
    Top = 97
    Width = 24
    Height = 15
    Caption = 'SITE:'
    FocusControl = txt_site
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 147
    Width = 62
    Height = 15
    Caption = 'ENDERECO:'
    FocusControl = txt_endereco
  end
  object Label10: TLabel [9]
    Left = 320
    Top = 147
    Width = 44
    Height = 15
    Caption = 'BAIRRO:'
    FocusControl = txt_bairro
  end
  object Label11: TLabel [10]
    Left = 539
    Top = 147
    Width = 90
    Height = 15
    Caption = 'COMPLEMENTO:'
    FocusControl = txt_complemento
  end
  object Label12: TLabel [11]
    Left = 719
    Top = 147
    Width = 53
    Height = 15
    Caption = 'NUMERO:'
    FocusControl = txt_numero
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 197
    Width = 32
    Height = 15
    Caption = 'IE/RG:'
    FocusControl = txt_ierg
  end
  object lb_Estado: TLabel [13]
    Left = 319
    Top = 205
    Width = 45
    Height = 15
    Caption = 'ESTADO:'
  end
  object lb_cidade: TLabel [14]
    Left = 388
    Top = 205
    Width = 44
    Height = 15
    Caption = 'CIDADE:'
  end
  object txt_controle: TDBEdit [15]
    Left = 8
    Top = 68
    Width = 103
    Height = 23
    DataField = 'CONTROLE_CLIENTES'
    DataSource = ds_cadastros
    TabOrder = 0
  end
  object txt_razao: TDBEdit [16]
    Left = 144
    Top = 68
    Width = 200
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_cadastros
    TabOrder = 1
  end
  object txt_fantasia: TDBEdit [17]
    Left = 371
    Top = 68
    Width = 200
    Height = 23
    DataField = 'FANTASIA'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object txt_CNPJCPF: TDBEdit [18]
    Left = 631
    Top = 68
    Width = 150
    Height = 23
    DataField = 'CPF_CNPJ'
    DataSource = ds_cadastros
    TabOrder = 4
  end
  object cbbox_tipopessoa: TDBComboBox [19]
    Left = 577
    Top = 68
    Width = 41
    Height = 23
    DataField = 'TIPO_FJ'
    DataSource = ds_cadastros
    Items.Strings = (
      'F'
      'J')
    TabOrder = 3
  end
  object txt_nome: TDBEdit [20]
    Left = 8
    Top = 118
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 5
  end
  object txt_email: TDBEdit [21]
    Left = 224
    Top = 118
    Width = 300
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_cadastros
    TabOrder = 6
  end
  object txt_site: TDBEdit [22]
    Left = 547
    Top = 118
    Width = 236
    Height = 23
    DataField = 'SITE'
    DataSource = ds_cadastros
    TabOrder = 7
  end
  object txt_endereco: TDBEdit [23]
    Left = 8
    Top = 168
    Width = 300
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_cadastros
    TabOrder = 8
  end
  object txt_bairro: TDBEdit [24]
    Left = 320
    Top = 168
    Width = 200
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_cadastros
    TabOrder = 9
  end
  object txt_complemento: TDBEdit [25]
    Left = 539
    Top = 168
    Width = 174
    Height = 23
    DataField = 'COMPLEMENTO'
    DataSource = ds_cadastros
    TabOrder = 10
  end
  object txt_numero: TDBEdit [26]
    Left = 719
    Top = 168
    Width = 50
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_cadastros
    TabOrder = 11
  end
  object txt_ierg: TDBEdit [27]
    Left = 8
    Top = 218
    Width = 156
    Height = 23
    DataField = 'IE_RG'
    DataSource = ds_cadastros
    TabOrder = 12
  end
  object Cbox_Estado: TDBLookupComboBox [28]
    Left = 319
    Top = 218
    Width = 44
    Height = 23
    DataField = 'CONTROLE_ESTADO'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_ESTADO'
    ListField = 'UF'
    ListSource = LookUp.ds_estados
    TabOrder = 13
    OnExit = Cbox_EstadoExit
  end
  object cbox_cidades: TDBLookupComboBox [29]
    Left = 388
    Top = 218
    Width = 145
    Height = 23
    DataField = 'CONTROLE_CIDADE'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_CIDADE'
    ListField = 'NOME'
    ListSource = LookUp.ds_cidades
    TabOrder = 14
  end
  inherited pn_cabecalho: TPanel
    Width = 791
    TabOrder = 15
    ExplicitWidth = 787
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTES_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_CLIENTES'
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
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
    object fd_QueryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fd_QueryCadastroCONTROLE_CIDADE: TIntegerField
      FieldName = 'CONTROLE_CIDADE'
      Origin = 'CONTROLE_CIDADE'
    end
    object fd_QueryCadastroCONTROLE_ESTADO: TIntegerField
      FieldName = 'CONTROLE_ESTADO'
      Origin = 'CONTROLE_ESTADO'
    end
    object fd_QueryCadastroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Size = 60
    end
    object fd_QueryCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
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
