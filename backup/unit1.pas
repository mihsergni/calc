unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    chislo, pamyat : real;
    flag, oper : integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button17Click(Sender: TObject);
var s_f : real;
begin

if flag <> 0 then begin Edit1.Text:= '';flag := 0;end;

if (Edit1.Text = '0') and ((Sender as TButton).Caption <> ',') then Edit1.Text:= '';
Edit1.Text := Edit1.Text + (Sender as TButton).Caption;

end;

procedure TForm1.Button16Click(Sender: TObject);      // Вычитание
var s_f : real;
begin
oper :=2;
flag := 1;
s_f := StrToFloatDef(Edit1.Text, 0);
chislo := s_f;
Label1.Caption:=Edit1.Text + ' - ';
end;

procedure TForm1.Button12Click(Sender: TObject);   // Умножение
var s_f : real;
begin
oper :=3;
flag := 1;
s_f := StrToFloatDef(Edit1.Text, 0);
chislo := s_f;

Label1.Caption:=Edit1.Text + ' * ';

end;

procedure TForm1.Button18Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var s_f : real;
begin
s_f := StrToFloatDef(Edit1.Text, 0);

case oper of
1 : Edit1.Text:=FloatToStr(chislo * s_f  / 100);
2 : Edit1.Text:=FloatToStr(chislo *  s_f / 100);
3 : Edit1.Text:=FloatToStr(s_f  / 100);
4 : Edit1.Text:=FloatToStr(chislo *  s_f / 100);
end;
end;

procedure TForm1.Button20Click(Sender: TObject);    // Сложение
var s_f : real;
begin
oper := 1;
flag := 1;
s_f := StrToFloatDef(Edit1.Text, 0);
chislo := s_f;
Label1.Caption:=Edit1.Text + ' + ';

end;

procedure TForm1.Button21Click(Sender: TObject);
var s_f : real;
begin
s_f := StrToFloatDef(Edit1.Text, 0);

Edit1.Text:= FloatToStr(s_f * -1);


end;

procedure TForm1.Button23Click(Sender: TObject);
var s : string;
begin
s := Edit1.Text;
if (Pos(',', s) > 0) or (Length(s) = 0)  then exit;

  Edit1.Text := s + ',';
end;

procedure TForm1.Button24Click(Sender: TObject);
var s_f : real;
begin

s_f := StrToFloatDef(Edit1.Text, 0);

if (s_f = 0) and (oper = 4) then
begin
ShowMessage('На ноль делить нельзя!');
exit;
end;

Label1.Caption:=Label1.Caption + Edit1.Text;

case oper of
1 : Edit1.Text:=FloatToStr(s_f + chislo);
2 : Edit1.Text:=FloatToStr(chislo - s_f);
3 : Edit1.Text:=FloatToStr(chislo * s_f);
4 : Edit1.Text:=FloatToStr(chislo / s_f);
end;




//flag:=0;

end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  pamyat := 0;
end;

procedure TForm1.Button26Click(Sender: TObject);
begin

ShowMessage(FloatToStr(pamyat));

end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  Edit1.Text := FloatToStr(pamyat);
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  pamyat := pamyat + StrToFloatDef(Edit1.Text, 0);
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
    pamyat := pamyat - StrToFloatDef(Edit1.Text, 0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:= '0';
  Label1.Caption:='';
end;

procedure TForm1.Button30Click(Sender: TObject);
begin

pamyat := StrToFloatDef(Edit1.Text, 0);


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:= '0';
  Label1.Caption:='';
  oper := 0;
end;

procedure TForm1.Button4Click(Sender: TObject);
var s : string;
begin
s :=   Edit1.Text;
Delete(s, length(s), 1);
Edit1.Text:=s;

end;

procedure TForm1.Button5Click(Sender: TObject);
var s_f : real;
begin

s_f := StrToFloatDef(Edit1.Text, 0);

if s_f = 0 then
begin
ShowMessage('На ноль делить нельзя!');
exit;
end;


Edit1.Text:=FloatToStr(1/s_f);

end;

procedure TForm1.Button6Click(Sender: TObject);
var s_f : real;
begin

s_f := StrToFloatDef(Edit1.Text, 0);

Edit1.Text:=FloatToStr(s_f * s_f);

end;

procedure TForm1.Button7Click(Sender: TObject);
var s_f : real;
begin

s_f := StrToFloatDef(Edit1.Text, 0);

if s_f < 0 then
begin
ShowMessage('Нельзя извлечь корень из отрицательного числа!');
exit;
end;

Edit1.Text:=FloatToStr(sqrt(s_f));
end;

procedure TForm1.Button8Click(Sender: TObject);   // Деление
var s_f : real;
begin
oper :=4;
flag := 1;
s_f := StrToFloatDef(Edit1.Text, 0);
chislo := s_f;
Label1.Caption:=Edit1.Text + ' / ';

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  flag := 0;

end;

end.

