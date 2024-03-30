unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  TAGraph, TASeries;

type

  { TForm2 }

  TForm2 = class(TForm)
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Label1: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  var n,k,c: real;
    var ou:integer;

implementation
  uses Unit3,Unit4;
{$R *.lfm}

{ TForm2 }

procedure TForm2.MenuItem5Click(Sender: TObject);
begin
  ou := 0;
  ou :=1;
  Label1.Caption := 'y =5*x/6*x+3';
end;

procedure TForm2.MenuItem2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.Label1Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem3Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm2.MenuItem4Click(Sender: TObject);
  var x,y,xn,xk,h:real;
begin
  xn := StrToFloat(Form3.Edit1.Text);
  x := xn;
  xk  :=  StrToFloat(Form3.Edit2.Text);
  y  :=  0;
  h  :=  StrToFloat(Form4.Edit1.Text);
   while xk > x do
  begin
    if ou = 1 then begin
      y := 5*x/6*x+3;
      x := x+h;
      Chart1LineSeries1.AddXY(x,y);
    end;
    if ou = 2 then begin
      y := cos(4*x);
      x := x+h;
      Chart1LineSeries1.AddXY(x,y);
    end;
end;

end;

procedure TForm2.MenuItem6Click(Sender: TObject);
begin
  ou := 0;
  ou :=2;
  Label1.Caption := 'y=cos(4x)';

end;

procedure TForm2.MenuItem7Click(Sender: TObject);
begin
  Chart1LineSeries1.clear;
end;

end.

