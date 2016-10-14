unit TestDelphiNetRecordProcs;

interface

type
  TSomeRecord = record
    i,j,k,l: integer;

    function Sum: integer;
    procedure Clear;

    constructor Create(iValue: integer);
  end;

  // a record with operator overloads
  TOpRecord = record
    i: integer;
    s: string;

    class operator Add(A,B: TOpRecord): TOpRecord;
    class operator Equal(A, B: TOpRecord) : Boolean;

    class operator Implicit(A: TOpRecord): Integer;
    class operator Implicit(A: integer): TOpRecord;
  end;

  TPropertyRecord = record
  private
    fi, fj: integer;

    function GetTwiceI: integer;
    function GetTwiceJ: integer;
    procedure SetTWiceI(const Value: integer);

  public
    property I: integer read fi write fi;

    property TwiceI: integer read GetTwiceI write SetTWiceI;
    property TwiceJ: integer read GetTwiceJ;

  end;

implementation


{ TSomeRecord }

procedure TSomeRecord.Clear;
begin
  i := 0;
  j := 0;
  k := 0;
  l := 0;
end;

constructor TSomeRecord.Create(iValue: integer);
begin
  Clear;
  i := iValue;
end;

function TSomeRecord.Sum: integer;
begin
  Result := i + j + k + l;
end;

{ TOpRecord }

class operator TOpRecord.Add(A, B: TOpRecord): TOpRecord;
begin
  Result.i := A.i + B.i;
  Result.s := a.s + b.s;
end;

class operator TOpRecord.Equal(A, B: TOpRecord): Boolean;
begin
  Result := (a.i = b.i) and (a.s = b.s);
end;

class operator TOpRecord.Implicit(A: integer): TOpRecord;
begin
  Result.i := A;
  Result.s := '';
end;

class operator TOpRecord.Implicit(A: TOpRecord): Integer;
begin
  Result := A.i;
end;

{ TPropertyRecord }

function TPropertyRecord.GetTwiceI: integer;
begin
  Result := fi * 2;
end;

function TPropertyRecord.GetTwiceJ: integer;
begin
  Result := fj * 2;
end;

procedure TPropertyRecord.SetTWiceI(const Value: integer);
begin
  fi := Value div 2;
end;

end.
