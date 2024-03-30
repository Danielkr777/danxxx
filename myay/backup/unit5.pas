unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TForm5 }

  TForm5 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation
uses Unit1,Unit2;

{$R *.lfm}

{ TForm5 }

procedure TForm5.MenuItem1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm5.MenuItem2Click(Sender: TObject);
begin
  Form2.Show;
end;

end.

