unit Senha01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    image: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if (edit1.text = 'MEDIAPLAYER') and ( edit2.text = 'PLAY') then
 begin
   winexec ('C:\Arquivos de programas\Windows Media Player\MPLAYER2N.EXE', sw_shownormal)
 end
 else
    begin
    label3.caption := '    Usuário e Senha incorretos!'

    end;

 if (edit1.text = 'MEDIAPLAYER') and ( edit2.text = 'PLAY') then
   begin
   form1.close
   end
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if label3.Caption = 'Usuário e Senha corretos' then
begin

form1.close
end
end;


end.
