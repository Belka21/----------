unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,i:integer;
  s:string;
  f:TextFile ;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 for i:=1 to 9 do
  begin
   x:=random(401);
   s:=s+IntToStr(x);
   x:=random(2);
   if x=1 then s:=s+'+' else s:=s+'-';
   //i:=i+1;
  end;
 AssignFile(f,'drob.txt');
  Rewrite(f);
  Writeln(f, s );
  i:=1;
  for i:=1 to 11 do
   begin
    s:=s+'-';
    //i:=i+1;
   end;
  Writeln(f,s);
  CloseFile(f);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
i:=1;
end;

end.
