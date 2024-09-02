program ej5Pascal;

var
    arreglo1: array [1..3] of integer;
    arreglo2: array [1..3] of integer;

    i: integer;

    function pepe(arr: array [1..3] of integer): array [1..3] of integer;
    begin
        pepe := arr;
    end
begin
    arreglo1[1] := 1;
    arreglo1[2] := 2;
    arreglo1[3] := 3;

    arreglo2 := pepe(arreglo1);

    for i := 1 to 3 do
        writeln("Valor de arreglo2[i] = ", arreglo2[i]);
    end

end.