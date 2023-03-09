inherited frm_CadastrosFornecedores: Tfrm_CadastrosFornecedores
  Caption = 'Cadastros Fornecedores'
  ClientHeight = 296
  ClientWidth = 618
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 47
    Width = 140
    Height = 15
    Caption = 'CONTROLE_FORNECEDOR'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 99
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
  end
  object Label3: TLabel [2]
    Left = 232
    Top = 99
    Width = 52
    Height = 15
    Caption = 'FANTASIA'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 149
    Width = 27
    Height = 15
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 141
    Top = 149
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
  end
  object Label6: TLabel [5]
    Left = 355
    Top = 149
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
  end
  object Label7: TLabel [6]
    Left = 496
    Top = 149
    Width = 50
    Height = 15
    Caption = 'NUMERO'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 200
    Width = 14
    Height = 15
    Caption = 'UF'
  end
  object Label9: TLabel [8]
    Left = 67
    Top = 200
    Width = 81
    Height = 15
    Caption = 'NOME_CIDADE'
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 250
    Width = 250
    Height = 15
    Caption = 'EMAIL'
  end
  inherited pn_cabecalho: TPanel
    Width = 618
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
    TabOrder = 1
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
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [13]
    Left = 8
    Top = 68
    Width = 84
    Height = 23
    TabOrder = 3
  end
  object DBEdit2: TDBEdit [14]
    Left = 8
    Top = 120
    Width = 84
    Height = 23
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [15]
    Left = 232
    Top = 120
    Width = 84
    Height = 23
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [16]
    Left = 8
    Top = 170
    Width = 84
    Height = 23
    TabOrder = 6
  end
  object DBEdit5: TDBEdit [17]
    Left = 141
    Top = 170
    Width = 84
    Height = 23
    TabOrder = 7
  end
  object DBEdit6: TDBEdit [18]
    Left = 355
    Top = 170
    Width = 84
    Height = 23
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [19]
    Left = 496
    Top = 170
    Width = 84
    Height = 23
    TabOrder = 9
  end
  object DBEdit8: TDBEdit [20]
    Left = 8
    Top = 265
    Width = 84
    Height = 23
    TabOrder = 10
  end
  inherited fd_QueryCadastro: TFDQuery
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
