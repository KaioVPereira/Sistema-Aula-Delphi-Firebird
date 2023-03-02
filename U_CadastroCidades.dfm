inherited frm_CadatroCidade: Tfrm_CadatroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 184
  ClientWidth = 439
  ExplicitWidth = 455
  ExplicitHeight = 223
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 106
    Height = 15
    Caption = 'CONTROLE_CIDADE'
    FocusControl = txt_controle
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 128
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = txt_nomecidade
  end
  object Label3: TLabel [2]
    Left = 280
    Top = 128
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = txt_UF
  end
  inherited pn_cabecalho: TPanel
    Width = 439
    ExplicitWidth = 618
    inherited btn_sair: TBitBtn
      Left = 364
      ExplicitLeft = 364
    end
  end
  object txt_controle: TDBEdit [4]
    Left = 8
    Top = 85
    Width = 154
    Height = 23
    DataField = 'CONTROLE_CIDADE'
    DataSource = ds_cadastros
    TabOrder = 1
  end
  object txt_nomecidade: TDBEdit [5]
    Left = 8
    Top = 149
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object txt_UF: TDBEdit [6]
    Left = 280
    Top = 149
    Width = 34
    Height = 23
    DataField = 'UF'
    DataSource = ds_cadastros
    TabOrder = 3
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 192
    Top = 48
    object fd_QueryCadastroCONTROLE_CIDADE: TFDAutoIncField
      FieldName = 'CONTROLE_CIDADE'
      Origin = 'CONTROLE_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fd_QueryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fd_QueryCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      Size = 2
    end
  end
  inherited fd_UpdCadastros: TFDUpdateSQL
    Left = 368
    Top = 48
  end
  inherited fd_transaction: TFDTransaction
    Left = 192
    Top = 104
  end
  inherited ds_cadastros: TDataSource
    Left = 296
  end
end
