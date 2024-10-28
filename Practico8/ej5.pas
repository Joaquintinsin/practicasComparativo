Program ejercicio5;

Var
    x: Array [1..50] of Integer;
    y: Array [1..50] of Integer;
    i: Integer;
    p, q: ^Integer; // Clase
Begin { Main }
    y[0] := 0;
    for i := 1 to 100 do
    begin
        x[i] := y[i];
        y[i] := x[i];
    end;
    for i := 1 to 100 do
    begin
        writeln('x[', i ,'] = ', x[i]);
        writeln('y[', i ,'] = ', y[i]);
    end;

    // Clase
    New(p);
    New(q);
    p^ := 100;
    p := q;
    writeln('Valor de p=', p^);
    writeln('Valor de q=', q^);
End.
// Se genera basura porque se accede a lugares del arreglo que no debe.
// Los arreglos los declare de 1 a 50 y guardo en [0] por ejemplo, o accedo a [51] .. [100] guardando cosas
