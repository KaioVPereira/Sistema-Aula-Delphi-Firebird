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
    FocusControl = cxDBSpinEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 99
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 232
    Top = 99
    Width = 52
    Height = 15
    Caption = 'FANTASIA'
    FocusControl = cxDBTextEdit2
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 149
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = cxDBTextEdit3
  end
  object Label5: TLabel [4]
    Left = 141
    Top = 149
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = cxDBTextEdit4
  end
  object Label6: TLabel [5]
    Left = 355
    Top = 149
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = cxDBTextEdit5
  end
  object Label7: TLabel [6]
    Left = 496
    Top = 149
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = cxDBTextEdit6
  end
  object Label8: TLabel [7]
    Left = 0
    Top = 200
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = cxDBTextEdit7
  end
  object Label9: TLabel [8]
    Left = 67
    Top = 200
    Width = 81
    Height = 15
    Caption = 'NOME_CIDADE'
    FocusControl = cxDBTextEdit8
  end
  object Label10: TLabel [9]
    Left = 0
    Top = 253
    Width = 250
    Height = 15
    Caption = 'EMAIL'
    FocusControl = cxDBTextEdit9
  end
  inherited pn_cabecalho: TPanel
    Width = 618
  end
  object cxDBSpinEdit1: TcxDBSpinEdit [11]
    Left = 0
    Top = 64
    DataBinding.DataField = 'CONTROLE_FORNECEDOR'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 1
    Width = 121
  end
  object cxDBTextEdit1: TcxDBTextEdit [12]
    Left = 0
    Top = 112
    DataBinding.DataField = 'RAZAO_SOCIAL'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 2
    Width = 200
  end
  object cxDBTextEdit2: TcxDBTextEdit [13]
    Left = 232
    Top = 112
    DataBinding.DataField = 'FANTASIA'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 3
    Width = 200
  end
  object cxDBTextEdit3: TcxDBTextEdit [14]
    Left = 0
    Top = 162
    DataBinding.DataField = 'CNPJ'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit4: TcxDBTextEdit [15]
    Left = 141
    Top = 162
    DataBinding.DataField = 'ENDERECO'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 5
    Width = 200
  end
  object cxDBTextEdit5: TcxDBTextEdit [16]
    Left = 355
    Top = 162
    DataBinding.DataField = 'BAIRRO'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 6
    Width = 121
  end
  object cxDBTextEdit6: TcxDBTextEdit [17]
    Left = 496
    Top = 162
    DataBinding.DataField = 'NUMERO'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 7
    Width = 50
  end
  object cxDBTextEdit7: TcxDBTextEdit [18]
    Left = 0
    Top = 216
    DataBinding.DataField = 'UF'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 8
    Width = 35
  end
  object cxDBTextEdit8: TcxDBTextEdit [19]
    Left = 67
    Top = 216
    DataBinding.DataField = 'NOME_CIDADE'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 9
    Width = 121
  end
  object cxDBTextEdit9: TcxDBTextEdit [20]
    Left = 0
    Top = 266
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 10
    Width = 250
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
