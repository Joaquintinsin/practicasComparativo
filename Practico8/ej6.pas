Program ej6;
Type
    Tnodo = ^Nodo;
    Nodo = record
        info: Integer;
        next: Tnodo;
    end;
Var
    x: Tnodo;
    y: Tnodo;
Begin { Main }
    New(x);
    New(y);

    x^.next := y;
    y^.next := x;

    x := nil;
    y := nil;
End.
