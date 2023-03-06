unit U_CadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_CadatroCidade = class(Tfrm_Principal)
    fd_QueryCadastroCONTROLE_CIDADE: TFDAutoIncField;
    fd_QueryCadastroNOME: TStringField;
    Label1: TLabel;
    txt_controle: TDBEdit;
    Label2: TLabel;
    txt_nomecidade: TDBEdit;
    Cbox_uf: TDBLookupComboBox;
    fd_QueryCadastroCONTROLE_ESTADO: TIntegerField;
    fd_QueryCadastroUF: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadatroCidade: Tfrm_CadatroCidade;

implementation

{$R *.dfm}

uses U_LookUp;

procedure Tfrm_CadatroCidade.btn_gravarClick(Sender: TObject);
begin
  if Cbox_uf.Text = '' then
  begin
    showmessage ('O Valor da UF não foi informado');
  end

  else if txt_nomecidade.Text = '' then
  begin
    showmessage ('O nome do estado não foi informado');
  end
  else
  begin
    fd_QueryCadastro.FieldByName('UF').AsString := Cbox_uf.Text;

    inherited;

    txt_controle.Enabled      := False;
    txt_nomecidade.Enabled    := False;
    Cbox_uf.Enabled           := False;

    txt_controle.Clear;
    txt_nomecidade.Clear;
  end;


end;

procedure Tfrm_CadatroCidade.btn_novoClick(Sender: TObject);
begin
  inherited;
  //txt_controle.Enabled      := True;
  txt_nomecidade.Enabled    := True;
  Cbox_uf.Enabled           := True;

end;

procedure Tfrm_CadatroCidade.FormShow(Sender: TObject);
begin

  inherited;
  LookUp.FD_qryEstados.Open();
  LookUp.FD_qryEstados.FetchAll;

  txt_controle.Enabled      := False;
  txt_nomecidade.Enabled    := False;
  Cbox_uf.Enabled           := False;

  txt_controle.Clear;
  txt_nomecidade.Clear;

end;

end.
