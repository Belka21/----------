unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,b:integer;
  s:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
b:=pos(' ',Edit1.Text);
s:=copy(Edit1.Text,1,b-1);
x:=StrToInt(s);
s:=copy(Edit1.Text,b+1,length(Edit1.Text));
y:=StrToInt(s);
if x<y then Edit1.Text:=IntToStr(x)+' меньше'
 else if x>y then Edit1.Text:=IntToStr(y)+' меньше'
 else Edit1.Text:=IntToStr(x)+' и '+ IntToStr(y) +' равны';
end;

end.
