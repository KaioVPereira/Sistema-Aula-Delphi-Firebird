unit U_CadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FormMain, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Mask, Vcl.DBCtrls, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  Tfrm_CadastroProdutos = class(Tfrm_Principal)
    fd_QueryCadastroCODIGO: TIntegerField;
    fd_QueryCadastroDESCRICAO: TStringField;
    fd_QueryCadastroDEPARTAMENTO: TIntegerField;
    fd_QueryCadastroCOLECAO: TIntegerField;
    fd_QueryCadastroGRUPO: TIntegerField;
    fd_QueryCadastroLINHA: TIntegerField;
    fd_QueryCadastroMARCA: TIntegerField;
    fd_QueryCadastroUNIDADE: TIntegerField;
    fd_QueryCadastroPESO_LIQUIDO: TSingleField;
    fd_QueryCadastroPESO_BRUTO: TSingleField;
    fd_QueryCadastroCONTROLE_FORNECEDOR: TIntegerField;
    fd_QueryCadastroQTD: TSingleField;
    fd_QueryCadastroCUSTO: TSingleField;
    fd_QueryCadastroVALOR_UNITARIO: TSingleField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit6: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroProdutos: Tfrm_CadastroProdutos;

implementation

{$R *.dfm}

end.
