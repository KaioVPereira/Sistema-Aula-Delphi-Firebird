unit U_CadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, U_constantes, U_Biblioteca;

type
  Tfrm_CadastrosEstados = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_ESTADO: TFDAutoIncField;
    fd_QueryCadastroNOME: TStringField;
    Label1: TLabel;
    txt_controle: TDBEdit;
    Label2: TLabel;
    txt_nome: TDBEdit;
    fd_QueryCadastroUF: TStringField;
    Label3: TLabel;
    txt_UF: TDBEdit;
    procedure btn_gravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ValidaModoAbertura;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private

    Fmodo: TModoAbertura;

    { Private declarations }
  public
    property modo: TModoAbertura read Fmodo write Fmodo;
    { Public declarations }
  end;

var
  frm_CadastrosEstados: Tfrm_CadastrosEstados;

implementation

{$R *.dfm}

procedure Tfrm_CadastrosEstados.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  Fmodo := maInicial;
  ValidaModoAbertura;
end;

procedure Tfrm_CadastrosEstados.btn_gravarClick(Sender: TObject);
begin

  if txt_UF.Text = '' then
  begin
     MsgAtencao('O Valor da UF n�o foi informado');
  end

  else if txt_nome.Text = '' then
  begin
    MsgAtencao('O nome do estado n�o foi informado');
  end

  else
  begin
   inherited;
    Fmodo := maInicial;
    ValidaModoAbertura;
  end;


end;

procedure Tfrm_CadastrosEstados.btn_novoClick(Sender: TObject);
begin
  inherited;
  Fmodo := maInclusao;
  ValidaModoAbertura;
end;

procedure Tfrm_CadastrosEstados.FormShow(Sender: TObject);
begin
  inherited;
  Fmodo := maInicial;
  ValidaModoAbertura;
end;


procedure Tfrm_CadastrosEstados.ValidaModoAbertura;
begin
  if Fmodo = maInicial then
    begin
      txt_controle.Enabled := False;
      txt_nome.Enabled := false;
      txt_UF.Enabled := false;

      btn_gravar.Enabled   := false;
      btn_novo.Enabled     := True;
      btn_cancelar.Enabled := false;
    end;
  if Fmodo = maInclusao then
    begin
      txt_controle.Enabled := True;
      txt_nome.Enabled := True;
      txt_UF.Enabled := True;

      btn_gravar.Enabled   := True;
      btn_novo.Enabled     := false;
      btn_cancelar.Enabled := True;
  end;
    if Fmodo = maEdicao then
    begin
      txt_controle.Enabled := True;
      txt_nome.Enabled := True;
      txt_UF.Enabled := True;

      btn_gravar.Enabled   := false;
      btn_novo.Enabled     := True;
      btn_cancelar.Enabled := false;
  end;
  if Fmodo = maConsulta then
    begin
      txt_controle.Enabled := False;
      txt_nome.Enabled := false;
      txt_UF.Enabled := false;

      btn_gravar.Enabled   := false;
      btn_novo.Enabled     := True;
      btn_cancelar.Enabled := false;
  end;
  end;

end.
