inherited frm_CadastrosUsuarios: Tfrm_CadastrosUsuarios
  Caption = 'frm_CadastrosUsuarios'
  ClientHeight = 246
  ExplicitHeight = 284
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 108
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label2: TLabel [1]
    Left = 199
    Top = 108
    Width = 35
    Height = 15
    Caption = 'LOGIN'
    FocusControl = DB_login
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 158
    Width = 38
    Height = 15
    Caption = 'SENHA'
    FocusControl = DB_senha
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 42
    Width = 114
    Height = 15
    Caption = 'CONTROLE_USUARIO'
    FocusControl = DB_controle
  end
  object DB_nome: TDBEdit [5]
    Left = 8
    Top = 129
    Width = 185
    Height = 23
    DataField = 'NOME'
    DataSource = ds_cadastros
    TabOrder = 1
  end
  object DB_login: TDBEdit [6]
    Left = 199
    Top = 129
    Width = 304
    Height = 23
    CharCase = ecUpperCase
    DataField = 'LOGIN'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object DB_senha: TDBEdit [7]
    Left = 8
    Top = 179
    Width = 185
    Height = 23
    DataField = 'SENHA'
    DataSource = ds_cadastros
    PasswordChar = '*'
    TabOrder = 3
  end
  object DB_controle: TDBEdit [8]
    Left = 8
    Top = 63
    Width = 154
    Height = 23
    DataField = 'CONTROLE_USUARIO'
    DataSource = ds_cadastros
    Enabled = False
    TabOrder = 4
  end
  inherited fd_QueryCadastro: TFDQuery
    BeforePost = fd_QueryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'CONTROLE_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 792
    Top = 184
    object fd_QueryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object fd_QueryCadastroLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object fd_QueryCadastroSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object fd_QueryCadastroCONTROLE_USUARIO: TIntegerField
      FieldName = 'CONTROLE_USUARIO'
      Origin = 'CONTROLE_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fd_QueryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fd_UpdCadastros: TFDUpdateSQL
    Left = 792
    Top = 136
  end
  inherited fd_transaction: TFDTransaction
    Left = 792
    Top = 88
  end
  inherited ds_cadastros: TDataSource
    Left = 800
  end
  inherited FD_codigo: TFDQuery
    Left = 800
    Top = 240
  end
end
