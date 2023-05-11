inherited frm_ConsultaVendas: Tfrm_ConsultaVendas
  Caption = 'Consulta Vendas'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitTop = -56
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited btn_consultar: TButton
      OnClick = btn_consultarClick
    end
    inherited cboc_filtro: TComboBox
      Width = 121
      Items.Strings = (
        'Codigo do Cliente'
        'Controle Venda'
        'Nome Cliente')
      ExplicitWidth = 121
    end
  end
  object DB_Grid: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 1026
    Height = 322
    Align = alClient
    DataSource = DS_Consultas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTROLE_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MOV'
        Visible = True
      end>
  end
  inherited FD_qryConsultas: TFDQuery
    SQL.Strings = (
      'SELECT V.controle_venda,'
      '       V.controle_cliente,'
      
        '       decode (C.tipo_fj, '#39'F'#39', c.nome, c.razao_social) clientes,' +
        ' '
      '       V.data_mov'
      
        'FROM VENDAS_HEADER V INNER join CLIENTES C ON C.controle_cliente' +
        's = V.controle_cliente')
    object FD_qryConsultasCONTROLE_VENDA: TIntegerField
      FieldName = 'CONTROLE_VENDA'
      Origin = 'CONTROLE_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_qryConsultasCONTROLE_CLIENTE: TIntegerField
      FieldName = 'CONTROLE_CLIENTE'
      Origin = 'CONTROLE_CLIENTE'
    end
    object FD_qryConsultasCLIENTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTES'
      Origin = 'CLIENTES'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FD_qryConsultasDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = 'DATA_MOV'
    end
  end
end
