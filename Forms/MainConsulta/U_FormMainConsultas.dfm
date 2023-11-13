object frm_MainConsultas: Tfrm_MainConsultas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'MainConsultas'
  ClientHeight = 457
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 97
    Align = alTop
    TabOrder = 0
    object txt_consultar: TEdit
      Left = 8
      Top = 48
      Width = 225
      Height = 23
      TabOrder = 0
    end
    object btn_consultar: TButton
      Left = 248
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
    end
    object cboc_filtro: TComboBox
      Left = 8
      Top = 19
      Width = 89
      Height = 23
      TabOrder = 2
      Text = 'cboc_filtro'
    end
  end
  object FD_qryConsultas: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = FD_TransactionConsultas
    Left = 928
    Top = 176
  end
  object DS_Consultas: TDataSource
    DataSet = FD_qryConsultas
    Left = 936
    Top = 240
  end
  object FD_TransactionConsultas: TFDTransaction
    Connection = dm_Dados.fd_Connection
    Left = 936
    Top = 312
  end
end
