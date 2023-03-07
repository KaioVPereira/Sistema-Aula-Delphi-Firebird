inherited frm_ConsultaClientes: Tfrm_ConsultaClientes
  Caption = 'Consulta Clientes'
  ClientHeight = 419
  ClientWidth = 800
  ExplicitTop = -28
  ExplicitWidth = 812
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 800
    Height = 65
    ExplicitWidth = 1026
    ExplicitHeight = 65
    inherited txt_consultar: TEdit
      Left = 120
      Top = 18
      Width = 209
      ExplicitLeft = 120
      ExplicitTop = 18
      ExplicitWidth = 209
    end
    inherited btn_consultar: TButton
      Left = 351
      Top = 17
      OnClick = btn_consultarClick
      ExplicitLeft = 351
      ExplicitTop = 17
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
    Top = 65
    Width = 800
    Height = 354
    Align = alClient
    DataSource = DS_Consultas
    ReadOnly = True
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
