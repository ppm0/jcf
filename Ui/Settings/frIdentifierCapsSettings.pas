{(*}
(*------------------------------------------------------------------------------
 Delphi Code formatter source code 

The Original Code is frIdentifierCapsSettings.pas, released June 2005.
The Initial Developer of the Original Code is Anthony Steele. 
Portions created by Anthony Steele are Copyright (C) 1999-2008 Anthony Steele.
All Rights Reserved. 
Contributor(s): Anthony Steele. 

The contents of this file are subject to the Mozilla Public License Version 1.1
(the "License"). you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.mozilla.org/NPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied.
See the License for the specific language governing rights and limitations 
under the License.

Alternatively, the contents of this file may be used under the terms of
the GNU General Public License Version 2 or later (the "GPL") 
See http://www.gnu.org/licenses/gpl.html
------------------------------------------------------------------------------*)
{*)}

unit frIdentifierCapsSettings;

{$I JcfGlobal.inc}

interface

uses
  { delphi }
  Classes, Controls, Forms,
  StdCtrls,
  JvMemo, JvExStdCtrls,
  { local }
  frmBaseSettingsFrame;

type
  TfIdentifierCapsSettings = class(TfrSettingsFrame)
    Label1: TLabel;
    cbEnableAnyWords: TCheckBox;
    mWords: TJvMemo;
    procedure cbEnableAnyWordsClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;

    procedure Read; override;
    procedure Write; override;

  end;

implementation

uses JcfHelp, JcfSettings;

{$ifdef FPC}
  {$R *.lfm}
{$else}
  {$R *.dfm}
{$endif}

constructor TfIdentifierCapsSettings.Create(AOwner: TComponent);
begin
  inherited;
  fiHelpContext := HELP_CLARIFY_CAPITALISATION;
end;


procedure TfIdentifierCapsSettings.Read;
begin
  with JcfFormatSettings.IdentifierCaps do
  begin
    cbEnableAnyWords.Checked := Enabled;
    mWords.Lines.Assign(Words);
  end;
end;

procedure TfIdentifierCapsSettings.Write;
begin
  with JcfFormatSettings.IdentifierCaps do
  begin
    Enabled := cbEnableAnyWords.Checked;
    Words.Assign(mWords.Lines);
  end;
end;

procedure TfIdentifierCapsSettings.cbEnableAnyWordsClick(Sender: TObject);
begin
  mWords.Enabled := cbEnableAnyWords.Checked;
end;

procedure TfIdentifierCapsSettings.FrameResize(Sender: TObject);
begin
  mWords.Height := ClientHeight -
    (cbEnableAnyWords.Top + cbEnableAnyWords.Height + GUI_PAD);
end;

end.
