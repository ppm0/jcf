unit TestASMAnd;


{ This unit compiles but is not semantically meaningfull
 it is test cases for the code formatting utility

  This unit tests ampersands '&' in ASM blocks
  submitted by TridenT
}

interface

uses
  SysUtils;

type
  /// TMaClass comment
  TMaClass= class (TObject)
   Champ1 : integer ; /// Champ1 comment
   procedure FaitqqChose(x, y, dx, dy : integer); virtual;
  end;

implementation

/// FaitqqChose comment
procedure TmaClass.FaitqqChose(x, y, dx, dy: integer);
asm
PUSH dy;
PUSH &dx;
PUSH y;
PUSH x;
CALL DWORD PTR FaitqqChose;
end;

end.
