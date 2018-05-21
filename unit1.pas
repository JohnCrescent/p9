unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b:integer;
  x:real;
begin
a:=strtoint(edit1.text);   //načítanie premenných
b:=strtoint(edit2.text);

if a<>0 then
  begin
    x:=-b/a;   //výpočet koreňa
    x:=round(x*1000)/1000;     //zaokrúhlenie na 3 desatinné miesta
    label4.caption:='x= '+floattostr(x);
    end;
if (a=0) and (b<>0) then showmessage('Rovnica nemá riešenie.');
if (a=b) and (b=0) then showmessage('Rovnica má nekonečne veľa riešení.');
end;

end.

