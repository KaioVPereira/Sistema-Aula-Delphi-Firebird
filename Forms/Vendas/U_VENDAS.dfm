object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  HorzScrollBar.Tracking = True
  BorderIcons = [biMaximize]
  Caption = 'Vendas'
  ClientHeight = 722
  ClientWidth = 1805
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
    Left = 1333
    Top = 43
    Width = 472
    Height = 679
    Align = alRight
    Anchors = []
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 1349
    ExplicitTop = 110
    ExplicitHeight = 651
    DesignSize = (
      472
      679)
    object Label13: TLabel
      Left = 143
      Top = 192
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
      Top = 46
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
      Top = 345
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
    end
    object txt_Subtotal: TEdit
      Left = 57
      Top = 112
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
      ExplicitTop = 106
    end
    object txt_TotalVenda: TEdit
      Left = 57
      Top = 410
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
      ExplicitTop = 392
    end
    object txt_Desconto: TEdit
      Left = 57
      Top = 258
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
      ExplicitTop = 246
    end
    object Panel4: TPanel
      Left = 1
      Top = 604
      Width = 470
      Height = 74
      Align = alBottom
      TabOrder = 4
      ExplicitTop = 576
      object SpeedButton1: TSpeedButton
        Left = 1
        Top = 1
        Width = 155
        Height = 72
        Align = alLeft
      end
      object SpeedButton2: TSpeedButton
        Left = 156
        Top = 1
        Width = 158
        Height = 72
        Align = alClient
        ExplicitLeft = 152
        ExplicitWidth = 165
      end
      object SpeedButton3: TSpeedButton
        Left = 314
        Top = 1
        Width = 155
        Height = 72
        Align = alRight
        ExplicitLeft = 319
      end
    end
  end
  object pn_GridItens: TPanel
    Left = 0
    Top = 43
    Width = 733
    Height = 679
    Align = alClient
    AutoSize = True
    Caption = 'pn_GridItens'
    TabOrder = 1
    ExplicitTop = 110
    ExplicitWidth = 749
    ExplicitHeight = 651
    object DBG_VendasItens: TDBGrid
      Left = 1
      Top = 42
      Width = 731
      Height = 636
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
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Width = 64
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
          Width = 64
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
          Width = 64
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
      Width = 731
      Height = 41
      Align = alTop
      Caption = 'PRODUTOS'
      TabOrder = 1
      ExplicitWidth = 747
    end
  end
  object pn_Header: TPanel
    Left = 0
    Top = 0
    Width = 1805
    Height = 43
    Align = alTop
    AutoSize = True
    TabOrder = 2
    DesignSize = (
      1805
      43)
    object Label7: TLabel
      Left = 16
      Top = 2
      Width = 37
      Height = 15
      Caption = 'CAIXA:'
    end
    object Label8: TLabel
      Left = 354
      Top = 2
      Width = 63
      Height = 15
      Caption = 'VENDEDOR:'
    end
    object Label9: TLabel
      Left = 195
      Top = 2
      Width = 51
      Height = 15
      Caption = 'GERENTE:'
    end
    object txt_ControleVenda: TDBEdit
      Left = 1395
      Top = 1
      Width = 56
      Height = 23
      Anchors = []
      DataField = 'CONTROLE_VENDA'
      DataSource = dm_Dados.DS_Vendas
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 18
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
      Left = 346
      Top = 19
      Width = 145
      Height = 23
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 195
      Top = 18
      Width = 113
      Height = 23
      TabOrder = 3
    end
  end
  object pn_Meio: TPanel
    Left = 733
    Top = 43
    Width = 600
    Height = 679
    Align = alRight
    AutoSize = True
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 749
    ExplicitTop = 110
    ExplicitHeight = 651
    DesignSize = (
      600
      679)
    object Label1: TLabel
      Left = 6
      Top = 70
      Width = 145
      Height = 15
      Anchors = []
      Caption = 'REFERENCIA DO PRODUTO:'
      ExplicitTop = 64
    end
    object Label2: TLabel
      Left = 5
      Top = 189
      Width = 142
      Height = 15
      Anchors = []
      Caption = 'DESCRI'#199#195'O DO PRODUTO:'
      ExplicitTop = 174
    end
    object Label3: TLabel
      Left = 6
      Top = 266
      Width = 121
      Height = 15
      Anchors = []
      Caption = 'CODIGO DO PRODUTO'
      ExplicitTop = 246
    end
    object Label4: TLabel
      Left = 6
      Top = 360
      Width = 52
      Height = 15
      Anchors = []
      Caption = 'ESTOQUE:'
      ExplicitTop = 333
    end
    object Label5: TLabel
      Left = 5
      Top = 505
      Width = 94
      Height = 15
      Anchors = []
      Caption = 'VALOR UNIT'#193'RIO:'
      ExplicitTop = 467
    end
    object Label6: TLabel
      Left = 6
      Top = 583
      Width = 74
      Height = 15
      Anchors = []
      Caption = 'VALOR TOTAL:'
      ExplicitTop = 539
    end
    object Image1: TImage
      Left = 312
      Top = 392
      Width = 257
      Height = 247
      Anchors = []
      Center = True
      Stretch = True
      ExplicitTop = 354
    end
    object TLabel
      Left = 5
      Top = 433
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
    end
    object txt_DescProd: TEdit
      Left = 6
      Top = 213
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
      ExplicitTop = 203
    end
    object txt_Codigo: TEdit
      Left = 6
      Top = 290
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
      ExplicitTop = 277
    end
    object txt_Estoque: TEdit
      Left = 6
      Top = 385
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
      ExplicitTop = 368
    end
    object txt_ValorUnitario: TEdit
      Left = 6
      Top = 530
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
      ExplicitTop = 507
    end
    object txt_ItemTotal: TEdit
      Left = 6
      Top = 607
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
      ExplicitTop = 581
    end
    object ckb_ColetaQTD: TCheckBox
      Left = 112
      Top = 457
      Width = 169
      Height = 38
      Anchors = []
      Caption = 'COLETAR QUANTIDADE'
      TabOrder = 7
      OnClick = ckb_ColetaQTDClick
      ExplicitTop = 437
    end
    object txt_Qtd: TEdit
      Left = 6
      Top = 457
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
      ExplicitTop = 437
    end
    object txt_referencia: TEdit
      Left = 6
      Top = 94
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
      ExplicitTop = 89
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
