object Frm_PDV2: TFrm_PDV2
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 510
  ClientWidth = 1988
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object pn_GridItens: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 510
    Align = alClient
    Caption = 'pn_GridItens'
    TabOrder = 0
    ExplicitWidth = 946
    ExplicitHeight = 509
    object DBGrid1: TDBGrid
      Left = 1
      Top = 42
      Width = 948
      Height = 467
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
      Width = 948
      Height = 41
      Align = alTop
      Caption = 'PRODUTOS'
      TabOrder = 1
      ExplicitWidth = 944
    end
  end
  object pn_Meio: TPanel
    Left = 950
    Top = 0
    Width = 600
    Height = 510
    Align = alRight
    Caption = 'pn_Meio'
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 955
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
    object Edit1: TEdit
      Left = 6
      Top = 85
      Width = 588
      Height = 83
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 6
      Top = 195
      Width = 588
      Height = 23
      TabOrder = 2
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 5
      Top = 267
      Width = 589
      Height = 23
      TabOrder = 3
      Text = 'Edit2'
    end
  end
  object pn_Direita: TPanel
    Left = 1550
    Top = 0
    Width = 438
    Height = 510
    Align = alRight
    Caption = 'pn_Direita'
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 1546
    ExplicitHeight = 509
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
  end
end
