unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Label1.Font.Size=12 then
  Label1.Font.Size:=14
  else Label1.Font.Size:=12;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if Label1.Font.Style=[] then
Label1.Font.Style:=[fsBold]
else Label1.Font.Style:=[];
end;

end.
