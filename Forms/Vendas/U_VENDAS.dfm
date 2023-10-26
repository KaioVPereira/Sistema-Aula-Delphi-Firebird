object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  Width = 1821
  Height = 850
  HorzScrollBar.Range = 1000
  HorzScrollBar.Tracking = True
  VertScrollBar.Range = 1000
  Caption = 'Vendas'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  ScreenSnap = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 1788
    Height = 1000
    HorzScrollBar.Range = 1038
    VertScrollBar.Range = 700
    Align = alClient
    AutoScroll = False
    TabOrder = 0
    ExplicitWidth = 1805
    ExplicitHeight = 811
    object pn_Meio: TPanel
      Left = 746
      Top = 123
      Width = 600
      Height = 873
      Align = alRight
      AutoSize = True
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 1181
      ExplicitTop = 143
      ExplicitHeight = 863
      object Label1: TLabel
        Left = 6
        Top = 64
        Width = 145
        Height = 15
        Caption = 'REFERENCIA DO PRODUTO:'
      end
      object Label2: TLabel
        Left = 5
        Top = 174
        Width = 142
        Height = 15
        Caption = 'DESCRI'#199#195'O DO PRODUTO:'
      end
      object Label3: TLabel
        Left = 6
        Top = 246
        Width = 121
        Height = 15
        Caption = 'CODIGO DO PRODUTO'
      end
      object Label4: TLabel
        Left = 6
        Top = 333
        Width = 52
        Height = 15
        Caption = 'ESTOQUE:'
      end
      object Label5: TLabel
        Left = 5
        Top = 467
        Width = 94
        Height = 15
        Caption = 'VALOR UNIT'#193'RIO:'
      end
      object Label6: TLabel
        Left = 6
        Top = 539
        Width = 74
        Height = 15
        Caption = 'VALOR TOTAL:'
      end
      object Image1: TImage
        Left = 312
        Top = 354
        Width = 257
        Height = 247
        Center = True
        Stretch = True
      end
      object TLabel
        Left = 5
        Top = 400
        Width = 76
        Height = 15
        Caption = 'QUANTIDADE:'
      end
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 598
        Height = 41
        Align = alTop
        Caption = 'PRODUTOS'
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 0
      end
      object txt_DescProd: TEdit
        Left = 6
        Top = 195
        Width = 588
        Height = 40
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object txt_Codigo: TEdit
        Left = 6
        Top = 267
        Width = 589
        Height = 36
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object txt_Estoque: TEdit
        Left = 6
        Top = 354
        Width = 260
        Height = 36
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object txt_ValorUnitario: TEdit
        Left = 6
        Top = 488
        Width = 260
        Height = 36
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 4
      end
      object txt_ItemTotal: TEdit
        Left = 6
        Top = 560
        Width = 260
        Height = 36
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ckb_ColetaQTD: TCheckBox
        Left = 112
        Top = 421
        Width = 169
        Height = 38
        Caption = 'COLETAR QUANTIDADE'
        TabOrder = 7
        OnClick = ckb_ColetaQTDClick
      end
      object txt_Qtd: TEdit
        Left = 6
        Top = 421
        Width = 51
        Height = 36
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 6
        Text = '1'
        OnChange = txt_QtdChange
        OnKeyPress = txt_QtdKeyPress
      end
      object txt_referencia: TEdit
        Left = 6
        Top = 85
        Width = 588
        Height = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -50
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnChange = txt_referenciaChange
        OnExit = txt_referenciaExit
        OnKeyPress = txt_ReferenciaKeyPress
      end
    end
    object pn_GridItens: TPanel
      Left = 0
      Top = 123
      Width = 746
      Height = 873
      Align = alClient
      AutoSize = True
      Caption = 'pn_GridItens'
      TabOrder = 1
      ExplicitTop = 137
      ExplicitWidth = 1367
      ExplicitHeight = 674
      object DBG_VendasItens: TDBGrid
        Left = 1
        Top = 42
        Width = 744
        Height = 830
        Align = alClient
        DataSource = dm_Dados.DS_VendasItens
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 744
        Height = 41
        Align = alTop
        Caption = 'PRODUTOS'
        TabOrder = 1
        ExplicitWidth = 1365
      end
    end
    object pn_Header: TPanel
      Left = 0
      Top = 0
      Width = 1784
      Height = 123
      Align = alTop
      AutoSize = True
      TabOrder = 2
      object Label7: TLabel
        Left = 16
        Top = 1
        Width = 37
        Height = 15
        Caption = 'CAIXA:'
      end
      object Label8: TLabel
        Left = 16
        Top = 77
        Width = 63
        Height = 15
        Caption = 'VENDEDOR:'
      end
      object Label9: TLabel
        Left = 296
        Top = 78
        Width = 51
        Height = 15
        Caption = 'GERENTE:'
      end
      object txt_ControleVenda: TDBEdit
        Left = 1080
        Top = 38
        Width = 121
        Height = 23
        DataField = 'CONTROLE_VENDA'
        DataSource = dm_Dados.DS_Vendas
        TabOrder = 0
      end
      object SpinEdit2: TSpinEdit
        Left = 1027
        Top = 74
        Width = 121
        Height = 24
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 22
        Width = 145
        Height = 23
        DataField = 'CONTROLE_FUNC'
        DataSource = dm_Dados.DS_Vendas
        KeyField = 'CONTROLE_USUARIO'
        ListField = 'NOME'
        ListSource = DS_Func
        TabOrder = 2
        OnEnter = DBLookupComboBox1Enter
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 98
        Width = 145
        Height = 23
        TabOrder = 3
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 296
        Top = 99
        Width = 145
        Height = 23
        TabOrder = 4
      end
    end
    object pn_Direita: TPanel
      Left = 1346
      Top = 123
      Width = 438
      Height = 873
      Align = alRight
      AutoSize = True
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 3
      ExplicitLeft = 1247
      ExplicitTop = 143
      ExplicitHeight = 863
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 436
        Height = 41
        Align = alTop
        Caption = 'PRODUTOS'
        Color = clActiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 24
        Top = 101
        Width = 393
        Height = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -50
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = txt_referenciaChange
        OnExit = txt_referenciaExit
        OnKeyPress = txt_ReferenciaKeyPress
      end
      object Edit3: TEdit
        Left = 24
        Top = 382
        Width = 393
        Height = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -50
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = txt_referenciaChange
        OnExit = txt_referenciaExit
        OnKeyPress = txt_ReferenciaKeyPress
      end
      object Edit4: TEdit
        Left = 24
        Top = 523
        Width = 393
        Height = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -50
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = txt_referenciaChange
        OnExit = txt_referenciaExit
        OnKeyPress = txt_ReferenciaKeyPress
      end
      object Edit1: TEdit
        Left = 24
        Top = 236
        Width = 393
        Height = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -50
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = txt_referenciaChange
        OnExit = txt_referenciaExit
        OnKeyPress = txt_ReferenciaKeyPress
      end
    end
  end
  object Fdqry_Func: TFDQuery
    Connection = dm_Dados.fd_Connection
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 280
    Top = 209
    object Fdqry_FuncNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object Fdqry_FuncLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object Fdqry_FuncSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object Fdqry_FuncCONTROLE_USUARIO: TIntegerField
      FieldName = 'CONTROLE_USUARIO'
      Origin = 'CONTROLE_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdqry_FuncDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  object DS_Func: TDataSource
    DataSet = Fdqry_Func
    Left = 1640
    Top = 264
  end
end
