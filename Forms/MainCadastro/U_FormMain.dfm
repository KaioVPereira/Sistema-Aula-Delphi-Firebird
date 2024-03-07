object frm_Principal: Tfrm_Principal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 296
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object pn_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 41
    Align = alTop
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object SpeedButton2: TSpeedButton
      Left = 437
      Top = 8
      Width = 23
      Height = 22
      Caption = '<'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 466
      Top = 8
      Width = 23
      Height = 22
      Caption = '>'
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 495
      Top = 8
      Width = 23
      Height = 22
      Caption = '>>'
      OnClick = SpeedButton4Click
    end
    object SpeedButton1: TSpeedButton
      Left = 408
      Top = 8
      Width = 23
      Height = 22
      Caption = '<<'
      OnClick = SpeedButton1Click
    end
    object btn_novo: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btn_novoClick
    end
    object btn_gravar: TBitBtn
      Left = 81
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btn_gravarClick
    end
    object btn_cancelar: TBitBtn
      Left = 162
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_cancelarClick
    end
    object btn_excluir: TBitBtn
      Left = 243
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btn_excluirClick
    end
    object Panel4: TPanel
      Left = 848
      Top = 1
      Width = 84
      Height = 39
      Align = alRight
      Caption = 'Panel4'
      TabOrder = 4
      object btn_sair: TBitBtn
        Left = 1
        Top = 1
        Width = 82
        Height = 37
        Align = alClient
        Caption = 'Sair'
        TabOrder = 0
        OnClick = btn_sairClick
      end
    end
  end
  object fd_QueryCadastro: TFDQuery
    Connection = dm_Dados.fd_Connection
    Transaction = fd_transaction
    Left = 568
    Top = 208
  end
  object fd_UpdCadastros: TFDUpdateSQL
    Connection = dm_Dados.fd_Connection
    Left = 568
    Top = 152
  end
  object fd_transaction: TFDTransaction
    Connection = dm_Dados.fd_Connection
    Left = 568
    Top = 96
  end
  object ds_cadastros: TDataSource
    DataSet = fd_QueryCadastro
    Left = 568
    Top = 40
  end
  object FD_codigo: TFDQuery
    Connection = dm_Dados.fd_Connection
    Left = 456
    Top = 208
  end
end
