unit U_Inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tfrm_inicio = class(TForm)
    MainMenu1: TMainMenu;
    Cadastris1: TMenuItem;
    CadastrarCliente1: TMenuItem;
    Estado: TMenuItem;
    Cidades: TMenuItem;
    procedure CadastrarCliente1Click(Sender: TObject);
    procedure EstadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inicio: Tfrm_inicio;

implementation

{$R *.dfm}

uses U_CadastroClientes, U_CadastroEstados;

procedure Tfrm_inicio.CadastrarCliente1Click(Sender: TObject);
begin
  frm_CadClientes.Show;
end;

procedure Tfrm_inicio.EstadoClick(Sender: TObject);
begin
  frm_CadastrosEstados.Show;
end;

end.
