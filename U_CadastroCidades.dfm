inherited frm_CadatroCidade: Tfrm_CadatroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 184
  ClientWidth = 670
  OnShow = FormShow
  ExplicitWidth = 682
  ExplicitHeight = 222
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
  inherited pn_cabecalho: TPanel
    Width = 670
    TabOrder = 1
    ExplicitWidth = 435
    inherited Panel4: TPanel
      Left = 513
      ExplicitLeft = 282
    end
  end
  object txt_controle: TDBEdit [3]
    Left = 8
    Top = 85
    Width = 154
    Height = 23
    DataField = 'CONTROLE_CIDADE'
    DataSource = ds_cadastros
    Enabled = False
    TabOrder = 0
  end
  object txt_nomecidade: TDBEdit [4]
    Left = 8
    Top = 149
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object Cbox_uf: TDBLookupComboBox [5]
    Left = 243
    Top = 149
    Width = 38
    Height = 23
    DataField = 'CONTROLE_ESTADO'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_ESTADO'
    ListField = 'UF'
    ListSource = LookUp.ds_estados
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
    object fd_QueryCadastroCONTROLE_ESTADO: TIntegerField
      FieldName = 'CONTROLE_ESTADO'
      Origin = 'CONTROLE_ESTADO'
    end
    object fd_QueryCadastroUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
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
