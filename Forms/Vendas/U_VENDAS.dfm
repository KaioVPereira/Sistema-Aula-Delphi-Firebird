object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 668
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
    Top = 0
    Width = 985
    Height = 668
    Align = alClient
    Caption = 'pn_GridItens'
    TabOrder = 0
    ExplicitWidth = 981
    ExplicitHeight = 667
    object DBG_VendasItens: TDBGrid
      Left = 1
      Top = 42
      Width = 983
      Height = 625
      Align = alClient
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
    Top = 0
    Width = 600
    Height = 668
    Align = alRight
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 981
    ExplicitHeight = 667
    object Label1: TLabel
      Left = 6
      Top = 64
      Width = 124
      Height = 15
      Caption = 'CODIGO DO PRODUTO:'
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
      Width = 76
      Height = 15
      Caption = 'QUANTIDADE:'
    end
    object Label4: TLabel
      Left = 6
      Top = 333
      Width = 52
      Height = 15
      Caption = 'ESTOQUE:'
    end
    object Label5: TLabel
      Left = 6
      Top = 396
      Width = 95
      Height = 15
      Caption = 'PRE'#199'O UNIT'#193'RIO:'
    end
    object Label6: TLabel
      Left = 5
      Top = 467
      Width = 95
      Height = 15
      Caption = 'PRE'#199'O UNIT'#193'RIO:'
    end
    object Image1: TImage
      Left = 336
      Top = 354
      Width = 209
      Height = 170
      AutoSize = True
      Center = True
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
    object Edit2: TEdit
      Left = 5
      Top = 195
      Width = 588
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 5
      Top = 267
      Width = 589
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBLUEdit1: TDBLUEdit
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
    object Edit1: TEdit
      Left = 5
      Top = 354
      Width = 260
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 5
      Top = 417
      Width = 260
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 5
      Top = 488
      Width = 260
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object pn_Direita: TPanel
    Left = 1585
    Top = 0
    Width = 438
    Height = 668
    Align = alRight
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 1581
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
end
