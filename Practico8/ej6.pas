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
    y := x;
    Dispose(x);
End.
