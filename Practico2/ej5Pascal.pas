program ej5Pascal;

var
    registro1: record
        n: string[30];
        e: integer;
    end;

    registro2: record
        n: string[30];
        e: integer;
    end;

    arreglo1: array [1..10] of integer;
    arreglo2: array [1..10] of integer;

    tipoBasico1: record
        a: integer;
    end;
    tipoBasico2: record
        b: integer;
    end;

    x: integer;
    y: integer;

begin
    // Tipos basicos
    tipoBasico1.a := 20;
    tipoBasico2.b := 20;
    writeln('Pueden igualarse tipoBasico1.a y tipoBasico2.b? = ', tipoBasico1.a = tipoBasico2.b );

    // Registros
    
    registro1.n := 'Nombre1';
    registro1.e := 100;
    registro2.n := 'Nombre2';
    registro2.e := 100;
    writeln('Pueden igualarse registro1 y registro2? = ', registro1 = registro2 );
    {
    // Arreglos
    arreglo1[1] := 23;
    arreglo2[1] := 23;
    writeln('Pueden igualarse arreglo1 y arreglo2? = ', arreglo1 = arreglo2 );
    }
end.