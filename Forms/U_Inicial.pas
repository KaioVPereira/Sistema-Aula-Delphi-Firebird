unit U_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, U_Biblioteca,
  U_login, Vcl.Buttons, Vcl.ExtCtrls, U_ConsultaUsuario, U_CadastrosUsuarios;

type
  TFrm_NewInicial = class(TForm)
    Pn_Fundo: TPanel;
    Pn_Topo: TPanel;
    Pn_Menu: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Pn_FundoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
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
Panel1.Visible := False;
end;

procedure TFrm_NewInicial.SpeedButton3Click(Sender: TObject);
begin
  Panel1.Visible := True;
end;

procedure TFrm_NewInicial.SpeedButton6Click(Sender: TObject);
begin
  AbreFormShowModal(Tfrm_CadastrosUsuarios, frm_CadastrosUsuarios);
end;

end.
