{******************************************************************************}
{                       CnPack For Delphi/C++Builder                           }
{                     �й����Լ��Ŀ���Դ�������������                         }
{                   (C)Copyright 2001-2016 CnPack ������                       }
{                   ------------------------------------                       }
{                                                                              }
{            ���������ǿ�Դ���������������������� CnPack �ķ���Э������        }
{        �ĺ����·�����һ����                                                }
{                                                                              }
{            ������һ��������Ŀ����ϣ�������ã���û���κε���������û��        }
{        �ʺ��ض�Ŀ�Ķ������ĵ���������ϸ���������� CnPack ����Э�顣        }
{                                                                              }
{            ��Ӧ���Ѿ��Ϳ�����һ���յ�һ�� CnPack ����Э��ĸ��������        }
{        ��û�У��ɷ������ǵ���վ��                                            }
{                                                                              }
{            ��վ��ַ��http://www.cnpack.org                                   }
{            �����ʼ���master@cnpack.org                                       }
{                                                                              }
{******************************************************************************}

unit CnTestPaletteWizard;
{ |<PRE>
================================================================================
* �������ƣ�CnPack IDE ר�Ұ���������
* ��Ԫ���ƣ����Կؼ����װ�Ĳ���������Ԫ
* ��Ԫ���ߣ�CnPack ������
* ��    ע��
* ����ƽ̨��WinXP + Delphi 5
* ���ݲ��ԣ�PWin9X/2000/XP + Delphi 7 ����
* �� �� �����ô����е��ַ����ݲ�֧�ֱ��ػ�������ʽ
* ��Ԫ��ʶ��$Id:  CnTestPaletteWizard 1146 2012-10-24 06:25:41Z liuxiaoshanzhashu@gmail.com $
* �޸ļ�¼��2016.04.07 V1.0
*               ������Ԫ
================================================================================
|</PRE>}

interface

{$I CnWizards.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolsAPI, IniFiles, CnCommon, CnWizClasses, CnWizUtils, CnWizConsts, CnWizManager,
  StdCtrls, ExtCtrls;

type
  TTestPaletteForm = class(TForm)
    btnShowTabs: TButton;
    btnSetTab: TButton;
    lstTabs: TListBox;
    bvl1: TBevel;
    procedure btnShowTabsClick(Sender: TObject);
    procedure btnSetTabClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//==============================================================================
// ���Կؼ����װ�Ĳ�����ר��
//==============================================================================

{ TCnTestPaletteWizard }

  TCnTestPaletteWizard = class(TCnMenuWizard)
  private
    FTestPaletteForm: TTestPaletteForm;
  protected
    function GetHasConfig: Boolean; override;
  public
    constructor Create; override;

    function GetState: TWizardState; override;
    procedure Config; override;
    procedure LoadSettings(Ini: TCustomIniFile); override;
    procedure SaveSettings(Ini: TCustomIniFile); override;
    class procedure GetWizardInfo(var Name, Author, Email, Comment: string); override;
    function GetCaption: string; override;
    function GetHint: string; override;
    function GetDefShortCut: TShortCut; override;
    procedure Execute; override;
  end;

implementation

uses
  CnWizIdeUtils;

{$R *.DFM}

//==============================================================================
// ���Կؼ����װ�Ĳ�����ר��
//==============================================================================

{ TCnTestPaletteWizard }

procedure TCnTestPaletteWizard.Config;
begin
  ShowMessage('No option for this test case.');
end;

constructor TCnTestPaletteWizard.Create;
begin
  inherited;
  FTestPaletteForm := TTestPaletteForm.Create(Application);
end;

procedure TCnTestPaletteWizard.Execute;
begin
  FTestPaletteForm.Show;
end;

function TCnTestPaletteWizard.GetCaption: string;
begin
  Result := 'Test Palette';
end;

function TCnTestPaletteWizard.GetDefShortCut: TShortCut;
begin
  Result := 0;
end;

function TCnTestPaletteWizard.GetHasConfig: Boolean;
begin
  Result := True;
end;

function TCnTestPaletteWizard.GetHint: string;
begin
  Result := 'Test hint';
end;

function TCnTestPaletteWizard.GetState: TWizardState;
begin
  Result := [wsEnabled];
end;

class procedure TCnTestPaletteWizard.GetWizardInfo(var Name, Author, Email, Comment: string);
begin
  Name := 'Test Palette Wizard';
  Author := 'Liu Xiao';
  Email := 'master@cnpack.org';
  Comment := 'Test for Palette with Old/New Style';
end;

procedure TCnTestPaletteWizard.LoadSettings(Ini: TCustomIniFile);
begin

end;

procedure TCnTestPaletteWizard.SaveSettings(Ini: TCustomIniFile);
begin

end;

procedure TTestPaletteForm.btnShowTabsClick(Sender: TObject);
var
  I: Integer;
begin
  lstTabs.Clear;
  for I := 0 to CnPaletteWrapper.TabCount - 1 do
    lstTabs.Items.Add(CnPaletteWrapper.Tabs[I]);
  lstTabs.ItemIndex := CnPaletteWrapper.TabIndex;
  InfoDlg('Active Tab is ' + CnPaletteWrapper.ActiveTab);
end;

procedure TTestPaletteForm.btnSetTabClick(Sender: TObject);
begin
  CnPaletteWrapper.TabIndex := lstTabs.ItemIndex;
  InfoDlg('Set Tab Index to ' + IntToStr(lstTabs.ItemIndex));
end;

initialization
  RegisterCnWizard(TCnTestPaletteWizard); // ע��˲���ר��

end.