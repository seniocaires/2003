unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls;

type
  TMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses Unit1, Unit2, Unit3, Unitresposta, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.DFM}

procedure TMain.Button1Click(Sender: TObject);
begin
form1.show;
end;

procedure TMain.Button2Click(Sender: TObject);
begin
form2.show;
end;

procedure TMain.Button3Click(Sender: TObject);
begin
form3.show;
end;

procedure TMain.Button4Click(Sender: TObject);
begin
form4.show;
end;

procedure TMain.Button5Click(Sender: TObject);
begin
form5.show;
end;

procedure TMain.Button6Click(Sender: TObject);
begin
form6.show;
end;

procedure TMain.Button7Click(Sender: TObject);
begin
form7.show;
end;

procedure TMain.Button8Click(Sender: TObject);
begin
form8.show;
end;

end.
