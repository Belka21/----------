unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 Memo1.Lines.Add('нажмите F2 чтобы начать новую игру');
end;

procedure TForm1.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_INSERT:begin
             if StrToInt(Memo1.Lines[Memo1.Lines.Count-1])>x then
              begin
               Memo1.Lines.Add('моё число меньше');
               Memo1.Lines.Add('');
              end else
             if StrToInt(Memo1.Lines[Memo1.Lines.Count-1])<x then
              begin
               Memo1.Lines.Add('моё число больше');
               Memo1.Lines.Add('');
               end else
             if StrToInt(Memo1.Lines[Memo1.Lines.Count-1])=x then
              begin
               Memo1.Lines.Add('вы угадали!!!');
               Memo1.Lines.Add('нажмите F2 чтобы начать новую игру');
              end;
            end;
  VK_F2:begin
         x:=random(10)-5;
         Memo1.Lines.Clear;
         Memo1.Lines.Add('вам надо угодать число от -5 до 5; нажимая Insert вы подтверждаете набраное вами число');
        end;
 end;
end;

end.
