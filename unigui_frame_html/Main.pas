unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniButton;

type
  TMainForm = class(TUniForm)
    btnCards: TUniButton;
    procedure btnCardsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uCards;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnCardsClick(Sender: TObject);
var
  FrCards : TFrCards;
begin
  FrCards := TFrCards.Create(self);
  FrCards.Align := alClient;
  FrCards.Parent := MainForm;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
