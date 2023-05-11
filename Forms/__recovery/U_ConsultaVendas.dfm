inherited frm_ConsultaVendas: Tfrm_ConsultaVendas
  Caption = 'Consulta Vendas'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitLeft = -118
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitLeft = 8
    object Label1: TLabel [0]
      Left = 328
      Top = 28
      Width = 104
      Height = 15
      Caption = 'Selecione o per'#237'odo'
    end
    inherited btn_consultar: TButton
      Left = 512
      OnClick = btn_consultarClick
      ExplicitLeft = 512
    end
    inherited cboc_filtro: TComboBox
      Width = 121
      Text = ''
      Items.Strings = (
        'Codigo do Cliente'
        'Controle Venda'
        'Nome Cliente')
      ExplicitWidth = 121
    end
    object DT_INC: TDateTimePicker
      Left = 264
      Top = 49
      Width = 97
      Height = 23
      Date = 36526.000000000000000000
      Time = 0.530796979168371800
      TabOrder = 3
    end
    object DT_FIN: TDateTimePicker
      Left = 400
      Top = 49
      Width = 97
      Height = 23
      Date = 72716.000000000000000000
      Time = 0.530796979175647700
      TabOrder = 4
    end
    object btn_sair: TButton
      Left = 896
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btn_sairClick
    end
    object Button1: TButton
      Left = 608
      Top = 0
      Width = 17
      Height = 17
      Caption = 'P'
      TabOrder = 6
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
  object fr_vendas: TfrxReport
    Version = '2023.1.3'
    DataSet = frDB_Vendas
    DataSetName = 'frDB_Vendas'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45057.596746689810000000
    ReportOptions.LastChange = 45057.596746689810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDB_Vendas: TfrxDBDataset
    UserName = 'frDB_Vendas'
    CloseDataSource = False
    DataSet = FDQry_Relatorio
    BCDToCurrency = False
    DataSetOptions = []
    Left = 624
    Top = 208
  end
  object FDQry_Relatorio: TFDQuery
    Connection = dm_Dados.fd_Connection
    Left = 616
    Top = 264
  end
end
