inherited frm_ConsultaClientes: Tfrm_ConsultaClientes
  Caption = 'Consulta Clientes'
  WindowState = wsMaximized
  TextHeight = 15
  inherited Panel1: TPanel
    inherited txt_consultar: TEdit
      Width = 209
      ExplicitWidth = 209
    end
    inherited btn_consultar: TButton
      Left = 223
      OnClick = btn_consultarClick
      ExplicitLeft = 223
    end
    inherited cboc_filtro: TComboBox
      Text = ''
      Items.Strings = (
        'CODIGO'
        'CNPJ/CPF'
        'NOME'
        'RAZ'#195'O SOCIAL'
        'TIPO DE PESSOA'
        'E-MAIL'
        'BAIRRO'
        'CIDADE'
        'UF'
        'RG')
    end
  end
  object DBGrid1: TDBGrid [1]
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
        FieldName = 'CONTROLE_CLIENTES'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Caption = 'Tipo de pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE_RG'
        Title.Caption = 'RG/IE'
        Visible = True
      end>
  end
  inherited FD_qryConsultas: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
  end
end