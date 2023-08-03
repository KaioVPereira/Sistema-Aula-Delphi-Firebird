object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 811
  ClientWidth = 2023
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object pn_GridItens: TPanel
    Left = 0
    Top = 137
    Width = 985
    Height = 674
    Align = alClient
    Caption = 'pn_GridItens'
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 981
    ExplicitHeight = 667
    object DBG_VendasItens: TDBGrid
      Left = 1
      Top = 42
      Width = 983
      Height = 631
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
      Width = 983
      Height = 41
      Align = alTop
      Caption = 'PRODUTOS'
      TabOrder = 1
      ExplicitWidth = 979
    end
  end
  object pn_Meio: TPanel
    Left = 985
    Top = 137
    Width = 600
    Height = 674
    Align = alRight
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 143
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
      Left = 304
      Top = 354
      Width = 265
      Height = 239
      AutoSize = True
      Center = True
    end
    object TLabel
      Left = 8
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
    end
    object txt_DescProd: TEdit
      Left = 5
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
      Left = 5
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
    object txt_Referencia: TDBLUEdit
      Left = 6
      Top = 85
      Width = 588
      Height = 83
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = txt_ReferenciaChange
      OnExit = txt_ReferenciaExit
      OnKeyPress = txt_ReferenciaKeyPress
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
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
      TabOrder = 4
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
      ParentFont = False
      TabOrder = 5
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
      TabOrder = 6
    end
    object SpinEdit1: TSpinEdit
      Left = 6
      Top = 421
      Width = 68
      Height = 38
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 7
      Value = 1
      OnChange = SpinEdit1Change
    end
    object ckb_ColetaQTD: TCheckBox
      Left = 112
      Top = 421
      Width = 169
      Height = 38
      Caption = 'COLETAR QUANTIDADE'
      TabOrder = 8
      OnClick = ckb_ColetaQTDClick
    end
  end
  object pn_Direita: TPanel
    Left = 1585
    Top = 137
    Width = 438
    Height = 674
    Align = alRight
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 1581
    ExplicitTop = 0
    ExplicitHeight = 667
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
    object txt_Total: TDBLUEdit
      Left = 6
      Top = 78
      Width = 427
      Height = 62
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
    object txt_SubTotal: TDBLUEdit
      Left = 6
      Top = 195
      Width = 426
      Height = 62
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
    object txt_Desconto: TDBLUEdit
      Left = 6
      Top = 294
      Width = 427
      Height = 62
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
    object txt_TotalCompra: TDBLUEdit
      Left = 6
      Top = 393
      Width = 427
      Height = 62
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
    object txt_ValorRecebido: TDBLUEdit
      Left = 6
      Top = 496
      Width = 427
      Height = 62
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
    object txt_ValorTroco: TDBLUEdit
      Left = 6
      Top = 592
      Width = 424
      Height = 62
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      AutoHistory = False
      AutoHistoryLimit = 0
      AutoHistoryDirection = ahdFirst
      AutoSynchronize = False
      ReturnIsTab = False
      FileLookup = False
      Persist.Enable = False
      Persist.Storage = stInifile
      Persist.Count = 0
      Persist.MaxCount = False
      MatchCase = False
      ModifiedColor = clHighlight
      ShowModified = False
      Version = '2.3.1.6'
      DataLookup = False
    end
  end
  object pn_Header: TPanel
    Left = 0
    Top = 0
    Width = 2023
    Height = 137
    Align = alTop
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = -5
    object Label7: TLabel
      Left = 168
      Top = 11
      Width = 37
      Height = 15
      Caption = 'CAIXA:'
    end
    object Label8: TLabel
      Left = 168
      Top = 67
      Width = 63
      Height = 15
      Caption = 'VENDEDOR:'
    end
    object Label9: TLabel
      Left = 544
      Top = 11
      Width = 51
      Height = 15
      Caption = 'GERENTE:'
    end
    object DBComboBox1: TDBComboBox
      Left = 168
      Top = 32
      Width = 145
      Height = 23
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 544
      Top = 32
      Width = 145
      Height = 23
      TabOrder = 1
    end
    object DBComboBox3: TDBComboBox
      Left = 168
      Top = 88
      Width = 145
      Height = 23
      TabOrder = 2
    end
  end
end
