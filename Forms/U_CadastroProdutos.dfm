inherited frm_CadastroProdutos: Tfrm_CadastroProdutos
  Caption = 'Cadastrar Produtos'
  ClientHeight = 454
  ClientWidth = 816
  OnShow = FormShow
  ExplicitWidth = 828
  ExplicitHeight = 492
  TextHeight = 15
  object lb_codigo: TLabel [0]
    Left = 8
    Top = 51
    Width = 48
    Height = 15
    Caption = 'C'#211'DIGO:'
  end
  object lb_descricao: TLabel [1]
    Left = 8
    Top = 104
    Width = 66
    Height = 15
    Caption = 'DESCRI'#199#195'O:'
  end
  object lb_departamento: TLabel [2]
    Left = 8
    Top = 160
    Width = 90
    Height = 15
    Caption = 'DEPARTAMENTO:'
  end
  object lb_colecao: TLabel [3]
    Left = 127
    Top = 160
    Width = 57
    Height = 15
    Caption = 'COLECAO:'
  end
  object lb_grupo: TLabel [4]
    Left = 243
    Top = 160
    Width = 42
    Height = 15
    Caption = 'GRUPO:'
  end
  object lb_linha: TLabel [5]
    Left = 352
    Top = 160
    Width = 38
    Height = 15
    Caption = 'LINHA:'
  end
  object lb_marca: TLabel [6]
    Left = 488
    Top = 160
    Width = 45
    Height = 15
    Caption = 'MARCA:'
  end
  object lb_unidade: TLabel [7]
    Left = 616
    Top = 160
    Width = 53
    Height = 15
    Caption = 'UNIDADE:'
  end
  object lb_pesobruto: TLabel [8]
    Left = 8
    Top = 219
    Width = 70
    Height = 15
    Caption = 'PESO BRUTO:'
  end
  object lb_pesolquido: TLabel [9]
    Left = 192
    Top = 219
    Width = 80
    Height = 15
    Caption = 'PESO LIQUIDO:'
  end
  object lb_fornecedor: TLabel [10]
    Left = 8
    Top = 273
    Width = 78
    Height = 15
    Caption = 'FORNECEDOR:'
  end
  object lb_quantidade: TLabel [11]
    Left = 8
    Top = 315
    Width = 76
    Height = 15
    Caption = 'QUANTIDADE:'
  end
  object lb_custo: TLabel [12]
    Left = 8
    Top = 379
    Width = 39
    Height = 15
    Caption = 'CUSTO:'
  end
  object lb_valorunitario: TLabel [13]
    Left = 200
    Top = 379
    Width = 94
    Height = 15
    Caption = 'VALOR UNIT'#193'RIO:'
  end
  inherited pn_cabecalho: TPanel
    Width = 816
    TabOrder = 1
    ExplicitWidth = 812
    inherited btn_sair: TBitBtn
      Left = 740
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 736
      ExplicitTop = 1
      ExplicitHeight = 39
    end
  end
  object txt_codigo: TDBEdit [15]
    Left = 8
    Top = 72
    Width = 121
    Height = 23
    DataField = 'CODIGO'
    DataSource = ds_cadastros
    Enabled = False
    TabOrder = 0
  end
  object txt_descricao: TDBEdit [16]
    Left = 8
    Top = 125
    Width = 505
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = ds_cadastros
    TabOrder = 2
  end
  object cbox_Departamentto: TDBLookupComboBox [17]
    Left = 8
    Top = 176
    Width = 87
    Height = 23
    DataSource = ds_cadastros
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object cbox_Colecao: TDBLookupComboBox [18]
    Left = 127
    Top = 176
    Width = 94
    Height = 23
    Enabled = False
    TabOrder = 4
  end
  object cbox_Grupo: TDBLookupComboBox [19]
    Left = 243
    Top = 176
    Width = 87
    Height = 23
    Enabled = False
    TabOrder = 5
  end
  object cbox_linha: TDBLookupComboBox [20]
    Left = 352
    Top = 176
    Width = 113
    Height = 23
    Enabled = False
    TabOrder = 6
  end
  object cbox_marca: TDBLookupComboBox [21]
    Left = 488
    Top = 176
    Width = 97
    Height = 23
    Enabled = False
    TabOrder = 7
  end
  object cbox_Unidade: TDBLookupComboBox [22]
    Left = 616
    Top = 176
    Width = 87
    Height = 23
    Enabled = False
    TabOrder = 8
  end
  object cbox_Fornecedor: TDBLookupComboBox [23]
    Left = 8
    Top = 286
    Width = 229
    Height = 23
    DataField = 'CONTROLE_FORNECEDOR'
    DataSource = ds_cadastros
    KeyField = 'CONTROLE_FORNECEDOR'
    ListField = 'FANTASIA'
    ListSource = LookUp.ds_fornec
    TabOrder = 9
  end
  object dbmo_PesoBruto: TDBMoneyEdit [24]
    Left = 8
    Top = 240
    Width = 70
    Height = 23
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -12
    CalculatorLook.Font.Name = 'Segoe UI'
    CalculatorLook.Font.Style = []
    TabOrder = 10
    Version = '1.1.2.2'
    DataField = 'PESO_BRUTO'
    DataSource = ds_cadastros
  end
  object dbmo_PesoLiquido: TDBMoneyEdit [25]
    Left = 192
    Top = 240
    Width = 70
    Height = 23
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -12
    CalculatorLook.Font.Name = 'Segoe UI'
    CalculatorLook.Font.Style = []
    TabOrder = 11
    Version = '1.1.2.2'
    DataField = 'PESO_LIQUIDO'
    DataSource = ds_cadastros
  end
  object dbmo_qtd: TDBMoneyEdit [26]
    Left = 8
    Top = 336
    Width = 70
    Height = 23
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -12
    CalculatorLook.Font.Name = 'Segoe UI'
    CalculatorLook.Font.Style = []
    TabOrder = 12
    Version = '1.1.2.2'
    DataField = 'QTD'
    DataSource = ds_cadastros
  end
  object dbmo_custo: TDBMoneyEdit [27]
    Left = 8
    Top = 400
    Width = 70
    Height = 23
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -12
    CalculatorLook.Font.Name = 'Segoe UI'
    CalculatorLook.Font.Style = []
    TabOrder = 13
    Version = '1.1.2.2'
    DataField = 'CUSTO'
    DataSource = ds_cadastros
  end
  object dbmo_valorunitario: TDBMoneyEdit [28]
    Left = 200
    Top = 400
    Width = 70
    Height = 23
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -12
    CalculatorLook.Font.Name = 'Segoe UI'
    CalculatorLook.Font.Style = []
    TabOrder = 14
    Version = '1.1.2.2'
    DataField = 'VALOR_UNITARIO'
    DataSource = ds_cadastros
  end
  inherited fd_QueryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTOS_CODIGO'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 736
    Top = 216
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
    Left = 736
    Top = 160
  end
  inherited fd_transaction: TFDTransaction
    Left = 728
    Top = 120
  end
  inherited ds_cadastros: TDataSource
    Left = 728
    Top = 64
  end
end
