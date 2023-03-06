unit U_Inicio;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Unit1, AdvStyleIF, AdvAppStyler;

type
  TTMSForm2 = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvFormStyler1: TAdvFormStyler;
    procedure AdvFormStyler1ApplyStyle(Sender: TObject; AComponent: TComponent;
      var Allow: Boolean);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  TMSForm2: TTMSForm2;

implementation

{$R *.dfm}

procedure TTMSForm2.AdvFormStyler1ApplyStyle(Sender: TObject;
  AComponent: TComponent; var Allow: Boolean);
begin
  TMSFrame1.AppMenu1.SetAppStyle(AdvFormStyler1.Style,AdvFormStyler1.AppColor);
end;

end.
