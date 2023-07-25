inherited frm_CadastrosEstados: Tfrm_CadastrosEstados
  Caption = 'Cadastro de Estado'
  ClientHeight = 190
  ClientWidth = 683
  ExplicitWidth = 695
  ExplicitHeight = 228
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 107
    Height = 15
    Caption = 'CONTROLE_ESTADO'
    FocusControl = txt_controle
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 136
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = txt_nome
  end
  object Label3: TLabel [2]
    Left = 284
    Top = 136
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = txt_UF
  end
  inherited pn_cabecalho: TPanel
    Width = 683
    TabOrder = 1
    ExplicitWidth = 469
    inherited Panel4: TPanel
      Left = 526
      ExplicitLeft = 316
    end
  end
  object txt_controle: TDBEdit [4]
    Left = 8
    Top = 85
    Width = 41
    Height = 23
    DataField = 'CONTROLE_ESTADO'
    DataSource = ds_cadastros
    Enabled = False
    TabOrder = 0
  end
  object txt_nome: TDBEdit [5]
    Left = 8
    Top = 157
    Width = 200
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object txt_UF: TDBEdit [6]
    Left = 284
    Top = 159
    Width = 34
    Height = 23
    DataField = 'UF'
    DataSource = ds_cadastros
    TabOrder = 3
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_CONTROLE'
    UpdateOptions.AutoIncFields = 'CONTROLE_ESTADO'
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 344
    Top = 104
    object fd_QueryCadastroCONTROLE_ESTADO: TFDAutoIncField
      FieldName = 'CONTROLE_ESTADO'
      Origin = 'CONTROLE_ESTADO'
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
    Left = 160
    Top = 96
  end
  inherited fd_transaction: TFDTransaction
    Left = 280
    Top = 48
  end
  inherited ds_cadastros: TDataSource
    Left = 168
    Top = 48
  end
end
