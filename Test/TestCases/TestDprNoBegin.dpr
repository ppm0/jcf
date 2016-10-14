{$R RefSync.TLB}

library RefSync;

{ Important note about DLL memory management:
ShareMem must be the
first unit in your library's USES clause AND your
project's (select
Project-View Source) USES clause if your DLL
exports any procedures or
functions that pass strings as parameters or function
results. This
applies to all strings passed to and from your DLL--
even those that
are nested in records and classes. ShareMem is the
interface unit to
the BORLNDMM.DLL shared memory manager, which
must be deployed along
with your DLL. To avoid using BORLNDMM.DLL, pass
string information
using PChar or ShortString parameters. }

uses
uOraBaseProductEnv
in '..\..\CSComp\ProductEnv\uOraBaseProductEnv.pas',
SysUtils,
Classes,
ComServ,
PreParent
in '..\..\CSComp\ParentPackage\PreParent.pas'
{PreParentForm},
PrntWiz in '..\..\CSComp\ParentPackage\PrntWiz.pas'
{PrntWizForm},
RefMain in 'RefMain.pas' {RefMainForm},
RefObj in 'RefObj.pas',
DebugFrm in 'DebugFrm.pas' {DebugForm},
ParamFrm in 'ParamFrm.pas' {ParamsForm},
RefX in 'RefX.pas',
fKeyWord in 'fKeyWord.pas' {KeyWordForm},
CsDBTables
in '..\..\CSComp\CsDatabase\CsDBTables.pas',
CsDatabase
in '..\..\CSComp\CsDatabase\CsDatabase.pas',
CsQuery in '..\..\CSComp\CsDatabase\CsQuery.pas',
CsStoredProc
in '..\..\CSComp\CsDatabase\CsStoredProc.pas' { ,
MemCheck},
uSrvProc in '..\..\3TIER\B3\CsSrvDB\uSrvProc.pas',
uSrvQuery in '..\..\3TIER\B3\CsSrvDB\uSrvQuery.pas';

{$R *.RES}
exports
{ DllGetClassObject,
DllCanUnloadNow,
DllRegisterServer,
DllUnregisterServer,}
RefDialog,
RefLoad,
RefSaveSQLText,
RefLoadSQLText,
RefGetAttributes;
{begin
MemChk;}
end.