inherited frm_CadastroProdutos: Tfrm_CadastroProdutos
  Caption = 'Cadastrar Produtos'
  ClientHeight = 452
  ClientWidth = 827
  ExplicitWidth = 843
  ExplicitHeight = 491
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 51
    Width = 45
    Height = 15
    Caption = 'CODIGO'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 104
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = cxDBTextEdit1
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 163
    Width = 87
    Height = 15
    Caption = 'DEPARTAMENTO'
  end
  object Label4: TLabel [3]
    Left = 152
    Top = 163
    Width = 54
    Height = 15
    Caption = 'COLECAO'
  end
  object Label5: TLabel [4]
    Left = 288
    Top = 163
    Width = 39
    Height = 15
    Caption = 'GRUPO'
  end
  object Label6: TLabel [5]
    Left = 432
    Top = 163
    Width = 35
    Height = 15
    Caption = 'LINHA'
  end
  object Label7: TLabel [6]
    Left = 575
    Top = 163
    Width = 42
    Height = 15
    Caption = 'MARCA'
  end
  object Label8: TLabel [7]
    Left = 714
    Top = 163
    Width = 50
    Height = 15
    Caption = 'UNIDADE'
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 224
    Width = 79
    Height = 15
    Caption = 'PESO_LIQUIDO'
    FocusControl = DBEdit1
  end
  object Label10: TLabel [9]
    Left = 162
    Top = 227
    Width = 69
    Height = 15
    Caption = 'PESO_BRUTO'
    FocusControl = DBEdit2
  end
  object Label11: TLabel [10]
    Left = 8
    Top = 291
    Width = 140
    Height = 15
    Caption = 'CONTROLE_FORNECEDOR'
  end
  object Label12: TLabel [11]
    Left = 8
    Top = 339
    Width = 22
    Height = 15
    Caption = 'QTD'
    FocusControl = DBEdit3
  end
  object Label13: TLabel [12]
    Left = 8
    Top = 389
    Width = 36
    Height = 15
    Caption = 'CUSTO'
    FocusControl = DBEdit4
  end
  object Label14: TLabel [13]
    Left = 200
    Top = 389
    Width = 93
    Height = 15
    Caption = 'VALOR_UNITARIO'
    FocusControl = DBEdit5
  end
  inherited pn_cabecalho: TPanel
    Width = 827
    ExplicitWidth = 618
    inherited btn_sair: TBitBtn
      Left = 751
      Top = 1
      Height = 39
      Align = alRight
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [15]
    Left = 8
    Top = 125
    DataBinding.DataField = 'DESCRICAO'
    DataBinding.DataSource = ds_cadastros
    TabOrder = 1
    Width = 497
  end
  object DBEdit1: TDBEdit [16]
    Left = 8
    Top = 245
    Width = 121
    Height = 23
    DataField = 'PESO_LIQUIDO'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [17]
    Left = 162
    Top = 245
    Width = 154
    Height = 23
    DataField = 'PESO_BRUTO'
    DataSource = ds_cadastros
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [18]
    Left = 8
    Top = 352
    Width = 154
    Height = 23
    DataField = 'QTD'
    DataSource = ds_cadastros
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [19]
    Left = 8
    Top = 402
    Width = 154
    Height = 23
    DataField = 'CUSTO'
    DataSource = ds_cadastros
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 200
    Top = 402
    Width = 154
    Height = 23
    DataField = 'VALOR_UNITARIO'
    DataSource = ds_cadastros
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox [21]
    Left = 8
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox [22]
    Left = 152
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 8
  end
  object DBLookupComboBox3: TDBLookupComboBox [23]
    Left = 288
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 9
  end
  object DBLookupComboBox4: TDBLookupComboBox [24]
    Left = 432
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 10
  end
  object DBLookupComboBox5: TDBLookupComboBox [25]
    Left = 575
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 11
  end
  object DBLookupComboBox6: TDBLookupComboBox [26]
    Left = 714
    Top = 176
    Width = 97
    Height = 23
    TabOrder = 12
  end
  object DBLookupComboBox7: TDBLookupComboBox [27]
    Left = 8
    Top = 310
    Width = 97
    Height = 23
    TabOrder = 13
  end
  object DBEdit6: TDBEdit [28]
    Left = 8
    Top = 64
    Width = 87
    Height = 23
    TabOrder = 14
  end
  inherited fd_QueryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 640
    Top = 368
    object fd_QueryCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fd_QueryCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fd_QueryCadastroDEPARTAMENTO: TIntegerField
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
    end
    object fd_QueryCadastroCOLECAO: TIntegerField
      FieldName = 'COLECAO'
      Origin = 'COLECAO'
    end
    object fd_QueryCadastroGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object fd_QueryCadastroLINHA: TIntegerField
      FieldName = 'LINHA'
      Origin = 'LINHA'
    end
    object fd_QueryCadastroMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCA'
    end
    object fd_QueryCadastroUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
    end
    object fd_QueryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fd_QueryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField
      FieldName = 'CONTROLE_FORNECEDOR'
      Origin = 'CONTROLE_FORNECEDOR'
    end
    object fd_QueryCadastroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fd_QueryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fd_QueryCadastroVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
  end
  inherited fd_UpdCadastros: TFDUpdateSQL
    Left = 536
    Top = 360
  end
  inherited fd_transaction: TFDTransaction
    Left = 488
    Top = 368
  end
  inherited ds_cadastros: TDataSource
    Left = 728
    Top = 368
  end
end
