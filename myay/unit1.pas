unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  TAGraph, TASeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var x,y,xn,xk,h:real;
begin
  xn := StrToFloat(Edit3.Text);
  x := xn;
  xk  :=  StrToFloat(Edit2.Text);
  y  :=  0;
  h  :=  StrToFloat(Edit1.Text);
   while xk > x do
  begin
    if ComboBox1.ItemIndex = 0 then begin
      y := 5*x/6*x+3;
      x := x+h;
      Chart1LineSeries1.AddXY(x,y);
    end;
    if ComboBox1.ItemIndex = 1 then begin
      y := cos(4*x);
      x := x+h;
      Chart1LineSeries1.AddXY(x,y);
    end;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Chart1LineSeries1.Clear;
end;


procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

end.

