inherited frm_ConsultaUsuario: Tfrm_ConsultaUsuario
  Align = alClient
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  Caption = 'frm_ConsultaUsuario'
  ClientHeight = 469
  ClientWidth = 1046
  FormStyle = fsMDIChild
  ParentBiDiMode = False
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1054
  ExplicitHeight = 496
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1046
    ExplicitWidth = 1038
    inherited btn_consultar: TButton
      OnClick = btn_consultarClick
    end
    inherited cboc_filtro: TComboBox
      Text = 'Filtro'
      Items.Strings = (
        'NOME'
        'LOGIN'
        'CONTROLE_USUARIO')
    end
    object btn_visualizar: TButton
      Left = 681
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 3
    end
    object btn_alterar: TButton
      Left = 576
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 4
    end
    object btn_incluir: TButton
      Left = 472
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 1046
    Height = 372
    Align = alClient
    DataSource = DS_Consultas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
