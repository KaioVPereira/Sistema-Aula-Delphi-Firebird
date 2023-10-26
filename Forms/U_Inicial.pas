unit U_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, U_Biblioteca,
  U_login, Vcl.Buttons, Vcl.ExtCtrls, U_ConsultaUsuario, U_CadastrosUsuarios,
  U_VENDAS, U_CadastroProdutos;

type
  TFrm_NewInicial = class(TForm)
    Pn_Fundo: TPanel;
    Pn_Topo: TPanel;
    Pn_Menu: TPanel;
    Pnl_Cadastros: TPanel;
    SpeedButton1: TSpeedButton;
    btn_MostraPnConsultas: TSpeedButton;
    btn_MostraPnCadastro: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Pnl_Consultas: TPanel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Pn_FundoClick(Sender: TObject);
    procedure btn_MostraPnCadastroClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton6MouseLeave(Sender: TObject);
    procedure SpeedButton6MouseEnter(Sender: TObject);
    procedure btn_MostraPnConsultasClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NewInicial: TFrm_NewInicial;

implementation

{$R *.dfm}

procedure TFrm_NewInicial.FormCreate(Sender: TObject);
begin
  AbreFormShowModal(TFrm_login, Frm_login);
end;

procedure TFrm_NewInicial.Pn_FundoClick(Sender: TObject);
begin
Pnl_Cadastros.Visible := False;
Pnl_Consultas.Visible := False;
end;

procedure TFrm_NewInicial.btn_MostraPnConsultasClick(Sender: TObject);
begin
Pnl_Consultas.Visible := True;
Pnl_Cadastros.Visible := False;
end;

procedure TFrm_NewInicial.btn_MostraPnCadastroClick(Sender: TObject);
begin
Pnl_Cadastros.Visible := True;
Pnl_Consultas.Visible := False;
end;

procedure TFrm_NewInicial.SpeedButton4Click(Sender: TObject);
begin
  AbreFormShowModal(TFrm_PDV2, Frm_PDV2);
end;

procedure TFrm_NewInicial.SpeedButton5Click(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastroProdutos, frm_CadastroProdutos);
end;

procedure TFrm_NewInicial.SpeedButton6Click(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosUsuarios, frm_CadastrosUsuarios);

end;

procedure TFrm_NewInicial.SpeedButton6MouseEnter(Sender: TObject);
begin
  SpeedButton6.Font.Color := clWindowText;
end;

procedure TFrm_NewInicial.SpeedButton6MouseLeave(Sender: TObject);
begin
   SpeedButton6.Font.Color := clTeal;
end;

end.
