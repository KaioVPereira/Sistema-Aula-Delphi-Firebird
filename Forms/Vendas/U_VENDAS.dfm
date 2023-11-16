object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  HorzScrollBar.Tracking = True
  BorderStyle = bsNone
  Caption = 'Vendas'
  ClientHeight = 761
  ClientWidth = 1821
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
  object pn_Direita: TPanel
    Left = 1349
    Top = 110
    Width = 472
    Height = 651
    Align = alRight
    Anchors = []
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 1334
    ExplicitTop = 123
    ExplicitHeight = 655
    DesignSize = (
      472
      651)
    object Label13: TLabel
      Left = 143
      Top = 183
      Width = 220
      Height = 54
      Anchors = []
      Caption = 'DESCONTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitTop = 176
    end
    object Label10: TLabel
      Left = 142
      Top = 43
      Width = 227
      Height = 54
      Anchors = []
      Caption = 'SUB-TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitTop = 41
    end
    object Label12: TLabel
      Left = 182
      Top = 330
      Width = 130
      Height = 54
      Anchors = []
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitTop = 317
    end
    object SpeedButton1: TSpeedButton
      Left = 48
      Top = 565
      Width = 129
      Height = 62
      Anchors = []
      ExplicitTop = 544
    end
    object SpeedButton2: TSpeedButton
      Left = 193
      Top = 564
      Width = 128
      Height = 62
      Anchors = []
      ExplicitTop = 543
    end
    object SpeedButton3: TSpeedButton
      Left = 335
      Top = 565
      Width = 122
      Height = 62
      Anchors = []
      ExplicitTop = 544
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 470
      Height = 41
      Align = alTop
      Caption = 'PRODUTOS'
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitWidth = 468
    end
    object txt_Subtotal: TEdit
      Left = 57
      Top = 106
      Width = 393
      Height = 75
      Anchors = []
      Enabled = False
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
      ExplicitTop = 101
    end
    object txt_TotalVenda: TEdit
      Left = 57
      Top = 392
      Width = 393
      Height = 75
      Anchors = []
      Enabled = False
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
      ExplicitTop = 377
    end
    object txt_Desconto: TEdit
      Left = 57
      Top = 246
      Width = 393
      Height = 75
      Anchors = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -50
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0,0'
      OnChange = txt_referenciaChange
      OnExit = txt_referenciaExit
      OnKeyPress = txt_ReferenciaKeyPress
      ExplicitTop = 236
    end
  end
  object pn_GridItens: TPanel
    Left = 0
    Top = 110
    Width = 749
    Height = 651
    Align = alClient
    AutoSize = True
    Caption = 'pn_GridItens'
    TabOrder = 1
    ExplicitTop = 115
    ExplicitWidth = 733
    ExplicitHeight = 628
    object DBG_VendasItens: TDBGrid
      Left = 1
      Top = 42
      Width = 747
      Height = 608
      Align = alClient
      DataSource = dm_Dados.DS_VendasItens
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTROLE_VENDA_ITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TERMINAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 747
      Height = 41
      Align = alTop
      Caption = 'PRODUTOS'
      TabOrder = 1
      ExplicitWidth = 1344
    end
  end
  object pn_Header: TPanel
    Left = 0
    Top = 0
    Width = 1821
    Height = 110
    Align = alTop
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 1805
    DesignSize = (
      1821
      110)
    object Label7: TLabel
      Left = 16
      Top = 1
      Width = 37
      Height = 15
      Caption = 'CAIXA:'
    end
    object Label8: TLabel
      Left = 16
      Top = 69
      Width = 63
      Height = 15
      Caption = 'VENDEDOR:'
    end
    object Label9: TLabel
      Left = 296
      Top = 65
      Width = 51
      Height = 15
      Caption = 'GERENTE:'
    end
    object txt_ControleVenda: TDBEdit
      Left = 1408
      Top = 22
      Width = 56
      Height = 23
      Anchors = []
      DataField = 'CONTROLE_VENDA'
      DataSource = dm_Dados.DS_Vendas
      TabOrder = 0
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
      TabOrder = 1
      OnEnter = DBLookupComboBox1Enter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 86
      Width = 145
      Height = 23
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 296
      Top = 86
      Width = 113
      Height = 23
      TabOrder = 3
    end
  end
  object pn_Meio: TPanel
    Left = 749
    Top = 110
    Width = 600
    Height = 651
    Align = alRight
    AutoSize = True
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 739
    ExplicitTop = 123
    ExplicitHeight = 655
    DesignSize = (
      600
      651)
    object Label1: TLabel
      Left = 6
      Top = 67
      Width = 145
      Height = 15
      Anchors = []
      Caption = 'REFERENCIA DO PRODUTO:'
      ExplicitTop = 64
    end
    object Label2: TLabel
      Left = 5
      Top = 181
      Width = 142
      Height = 15
      Anchors = []
      Caption = 'DESCRI'#199#195'O DO PRODUTO:'
      ExplicitTop = 174
    end
    object Label3: TLabel
      Left = 6
      Top = 255
      Width = 121
      Height = 15
      Anchors = []
      Caption = 'CODIGO DO PRODUTO'
      ExplicitTop = 246
    end
    object Label4: TLabel
      Left = 6
      Top = 345
      Width = 52
      Height = 15
      Anchors = []
      Caption = 'ESTOQUE:'
      ExplicitTop = 333
    end
    object Label5: TLabel
      Left = 5
      Top = 484
      Width = 94
      Height = 15
      Anchors = []
      Caption = 'VALOR UNIT'#193'RIO:'
      ExplicitTop = 467
    end
    object Label6: TLabel
      Left = 6
      Top = 559
      Width = 74
      Height = 15
      Anchors = []
      Caption = 'VALOR TOTAL:'
      ExplicitTop = 539
    end
    object Image1: TImage
      Left = 312
      Top = 371
      Width = 257
      Height = 247
      Anchors = []
      Center = True
      Stretch = True
      ExplicitTop = 354
    end
    object TLabel
      Left = 5
      Top = 415
      Width = 76
      Height = 15
      Anchors = []
      Caption = 'QUANTIDADE:'
      ExplicitTop = 400
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
      ExplicitLeft = -3
      ExplicitTop = -5
    end
    object txt_DescProd: TEdit
      Left = 6
      Top = 203
      Width = 588
      Height = 40
      Anchors = []
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 195
    end
    object txt_Codigo: TEdit
      Left = 6
      Top = 277
      Width = 589
      Height = 36
      Anchors = []
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 267
    end
    object txt_Estoque: TEdit
      Left = 6
      Top = 368
      Width = 260
      Height = 36
      Anchors = []
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 354
    end
    object txt_ValorUnitario: TEdit
      Left = 6
      Top = 507
      Width = 260
      Height = 36
      Anchors = []
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 4
      ExplicitTop = 488
    end
    object txt_ItemTotal: TEdit
      Left = 6
      Top = 581
      Width = 260
      Height = 36
      Anchors = []
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ExplicitTop = 560
    end
    object ckb_ColetaQTD: TCheckBox
      Left = 112
      Top = 437
      Width = 169
      Height = 38
      Anchors = []
      Caption = 'COLETAR QUANTIDADE'
      TabOrder = 7
      OnClick = ckb_ColetaQTDClick
      ExplicitTop = 421
    end
    object txt_Qtd: TEdit
      Left = 6
      Top = 437
      Width = 51
      Height = 36
      Anchors = []
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
      ExplicitTop = 421
    end
    object txt_referencia: TEdit
      Left = 6
      Top = 89
      Width = 588
      Height = 75
      Anchors = []
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
      ExplicitTop = 85
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
