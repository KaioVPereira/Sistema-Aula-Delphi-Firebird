object frm_inicio: Tfrm_inicio
  Left = 0
  Top = 0
  Caption = 'In'#237'cio'
  ClientHeight = 310
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 24
    Top = 48
    object Cadastris1: TMenuItem
      Caption = 'Cadastros'
      object CadastrarCliente1: TMenuItem
        Caption = 'Clientes'
        OnClick = CadastrarCliente1Click
      end
      object Estado: TMenuItem
        Caption = 'Estado'
        OnClick = EstadoClick
      end
      object Cidades: TMenuItem
        Caption = 'Cidades'
        OnClick = CidadesClick
      end
    end
  end
end
