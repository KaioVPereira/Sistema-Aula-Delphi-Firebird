inherited frm_CadastrosFornecedores: Tfrm_CadastrosFornecedores
  Caption = 'Cadastros Fornecedores'
  OnShow = FormShow
  TextHeight = 15
  object lb_controle: TLabel [0]
    Left = 8
    Top = 47
    Width = 141
    Height = 15
    Caption = 'CONTROLE FORNECEDOR:'
  end
  object lb_razao: TLabel [1]
    Left = 8
    Top = 99
    Width = 85
    Height = 15
    Caption = 'RAZAO SOCIAL:'
  end
  object lb_fantasia: TLabel [2]
    Left = 232
    Top = 99
    Width = 55
    Height = 15
    Caption = 'FANTASIA:'
  end
  object lb_CNPJ: TLabel [3]
    Left = 8
    Top = 149
    Width = 30
    Height = 15
    Caption = 'CNPJ:'
  end
  object lb_endereco: TLabel [4]
    Left = 167
    Top = 149
    Width = 62
    Height = 15
    Caption = 'ENDERECO:'
  end
  object lb_bairro: TLabel [5]
    Left = 422
    Top = 149
    Width = 44
    Height = 15
    Caption = 'BAIRRO:'
  end
  object lb_numero: TLabel [6]
    Left = 520
    Top = 149
    Width = 53
    Height = 15
    Caption = 'NUMERO:'
  end
  object lb_UF: TLabel [7]
    Left = 8
    Top = 200
    Width = 17
    Height = 15
    Caption = 'UF:'
  end
  object lb_cidade: TLabel [8]
    Left = 67
    Top = 200
    Width = 82
    Height = 15
    Caption = 'NOME CIDADE:'
  end
  object lb_email: TLabel [9]
    Left = 8
    Top = 250
    Width = 37
    Height = 15
    Caption = 'EMAIL:'
  end
  inherited pn_cabecalho: TPanel
    TabOrder = 1
  end
  object cbox_UF: TDBLookupComboBox [11]
    Left = 8
    Top = 221
    Width = 41
    Height = 23
    DataField = 'CONTROLE_ESTADO'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_ESTADO'
    ListField = 'UF'
    ListSource = LookUp.ds_estados
    TabOrder = 2
    OnExit = cbox_UFExit
  end
  object cbox_Cidade: TDBLookupComboBox [12]
    Left = 67
    Top = 221
    Width = 110
    Height = 23
    DataField = 'CONTROLE_CIDADE'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_CIDADE'
    ListField = 'NOME'
    ListSource = LookUp.ds_cidades
    TabOrder = 3
  end
  object txt_controle: TDBEdit [13]
    Left = 8
    Top = 68
    Width = 140
    Height = 23
    DataField = 'CONTROLE_FORNECEDOR'
    DataSource = ds_cadastros
    Enabled = False
    TabOrder = 0
  end
  object txt_Razao: TDBEdit [14]
    Left = 8
    Top = 120
    Width = 209
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_cadastros
    TabOrder = 4
  end
  object txt_Fantasia: TDBEdit [15]
    Left = 232
    Top = 120
    Width = 258
    Height = 23
    DataField = 'FANTASIA'
    DataSource = ds_cadastros
    TabOrder = 5
  end
  object txt_CNPJ: TDBEdit [16]
    Left = 8
    Top = 170
    Width = 140
    Height = 23
    DataField = 'CNPJ'
    DataSource = ds_cadastros
    TabOrder = 6
  end
  object txt_Endereco: TDBEdit [17]
    Left = 167
    Top = 170
    Width = 249
    Height = 23
    DataField = 'ENDERECO'
    DataSource = ds_cadastros
    TabOrder = 7
  end
  object txt_Bairro: TDBEdit [18]
    Left = 422
    Top = 170
    Width = 84
    Height = 23
    DataField = 'BAIRRO'
    DataSource = ds_cadastros
    TabOrder = 8
  end
  object txt_Numero: TDBEdit [19]
    Left = 520
    Top = 170
    Width = 84
    Height = 23
    DataField = 'NUMERO'
    DataSource = ds_cadastros
    TabOrder = 9
  end
  object txt_Email: TDBEdit [20]
    Left = 8
    Top = 265
    Width = 345
    Height = 23
    DataField = 'EMAIL'
    DataSource = ds_cadastros
    TabOrder = 10
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField
      FieldName = 'CONTROLE_FORNECEDOR'
      Origin = 'CONTROLE_FORNECEDOR'
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
    object fd_QueryCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fd_QueryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fd_QueryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fd_QueryCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object fd_QueryCadastroCONTROLE_CIDADE: TIntegerField
      FieldName = 'CONTROLE_CIDADE'
      Origin = 'CONTROLE_CIDADE'
    end
    object fd_QueryCadastroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Size = 30
    end
    object fd_QueryCadastroCONTROLE_ESTADO: TIntegerField
      FieldName = 'CONTROLE_ESTADO'
      Origin = 'CONTROLE_ESTADO'
    end
    object fd_QueryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fd_QueryCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 30
    end
  end
end
