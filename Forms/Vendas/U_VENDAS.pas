unit U_VENDAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrm_PDV2 = class(TForm)
    pn_GridItens: TPanel;
    pn_Meio: TPanel;
    pn_Direita: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PDV2: TFrm_PDV2;

implementation

{$R *.dfm}

end.
