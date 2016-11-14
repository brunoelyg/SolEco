unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.Memo;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    label3: TLabel;
    Tela3: TPanel;
    MenuPrincipal: TPanel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Info: TPanel;
    Memo1: TMemo;
    Button5: TButton;
    Label5: TLabel;
    Edit2: TEdit;
    Button6: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TForm4.Button1Click(Sender: TObject);
var KWHmes: real;
conta, Litros:real;
begin
KWHmes:=strtofloat(edit1.Text);
Litros :=(3600);

conta := (KWHmes* litros);
Label2.Text:=('   Em uma Hidroelétrica foi necessário '+ floattostr(Conta) +' litros de água' );
label3.Text:=('   para produzir a energia gasta em sua casa');


end;

procedure TForm4.Button2Click(Sender: TObject);
begin
MenuPrincipal.Visible:=false;
tela3.Visible:=true;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
MenuPrincipal.Visible:=false;
tela3.Visible:=false;
info.Visible:=true;
Memo1.Text:=('Modo de usar o carregador:'+#13+'Conecte o celular na placa, verifique se o painel está exposto ao sol e'+#13+'ligue a placa pela chave'+#13+'O calculo feito por nosso software é'+#13+'levando em conta o uso de paineis simples e que'+#13+'não cobrem totalmente a casa' );
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
MenuPrincipal.Visible:=true;
tela3.Visible:=false;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
MenuPrincipal.Visible:=true;
tela3.Visible:=false;
info.Visible:=false;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
MenuPrincipal.Visible:=true;
tela3.Visible:=false;
info.Visible:=false;
end;

procedure TForm4.Button6Click(Sender: TObject);
var Preco: real;
conta, din:real;
begin
preco:=strtofloat (edit2.Text);
din :=(0.52);

conta := (Preco* din);
Label7.Text:=('   O valor seria de '+ floattostr(Conta) +' reais' );
end;










end.
