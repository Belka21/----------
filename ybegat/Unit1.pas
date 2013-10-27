unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Button1.Top:=Button1.Top+random(11)-5;
 Button1.Left:=Button1.Left+Random(11)-5;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Button2.Top:=Button2.Top+random(11)-5;
 Button2.Left:=Button2.Left+Random(11)-5;
end;

end.
