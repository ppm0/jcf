unit TestDelphiNetNestedType2;

{
  AFS May 2005
 This unit compiles but is not semantically meaningfull
 it is test cases for the code formatting utility

 More complex test of nested types in Delphi.NET
}

interface

type
  TOuterClass = class
  private
    myField: Integer;
  public
    type
      TInnerClass = class
      private
          type
            TInner2Class = class
            public
              myInnerField: Integer;
              procedure innerProc;
            end;

      public
        myInnerField: Integer;
        procedure innerProc;
      end;

    procedure outerProc;
  end;

implementation

{ TOuterClass.TInnerClass }

{ TOuterClass }

procedure TOuterClass.outerProc;
begin

end;

procedure TOuterClass.TInnerClass.innerProc;
begin

end;


{ TOuterClass.TInnerClass.TInner2Class }

procedure TOuterClass.TInnerClass.TInner2Class.innerProc;
begin

end;

end.
