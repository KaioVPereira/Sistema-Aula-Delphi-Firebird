unit U_FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  Tfrm_Principal = class(TForm)
    pn_cabecalho: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    fd_QueryCadastro: TFDQuery;
    fd_UpdCadastros: TFDUpdateSQL;
    fd_transaction: TFDTransaction;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses U_Dados;

procedure Tfrm_Principal.BitBtn1Click(Sender: TObject);
begin
  if not (fd_QueryCadastro.State in [dsEdit, dsInsert]) then
  begin
    fd_QueryCadastro.Insert;
  end;

end;

procedure Tfrm_Principal.BitBtn2Click(Sender: TObject);
begin
  if fd_QueryCadastro.State in [dsEdit, dsInsert] then
  begin
    fd_QueryCadastro.Post;
    fd_transaction.CommitRetaining;
  end;
end;

end.
