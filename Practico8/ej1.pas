Program ej1;

Uses CRT;

Type 
    DiaSemana = (Dom, Lun, Mar, Mie, Jue, Vie, Sab, Ocho, Nueve, Diez);
Var
    s: Set of DiaSemana;
    b: Byte absolute s;

Begin { Main }
    s := [];
    writeln('Vacio :', b);  // 0
    
    s := [Dom];
    writeln('Dom :', b);    // 1
    s := [Lun];
    writeln('Lun :', b);    // 2
    s := [Mar];
    writeln('Mar :', b);    // 4
    s := [Mie];
    writeln('Mie :', b);    // 8
    s := [Jue];
    writeln('Jue :', b);    // 16
    s := [Vie];
    writeln('Vie :', b);    // 32
    s := [Sab];
    writeln('Sab :', b);    // 64

    s := [Dom, Lun];
    writeln('Dom, Lun :', b);   // 3

    s := [Dom, Mar];
    writeln('Dom, Mar :', b);   // 5

    s := [Lun, Mar, Mie, Jue, Vie];             // 2 + 4 + 8 + 16 + 32
    writeln('Lun, Mar, Mie, Jue, Vie :', b);    // 62

    s := [Ocho];
    writeln('Ocho: ', b);

    // Los tipos Byte solo llegan hasta 128
    // entonces el nueve no llega a mostrarlo
    s := [Nueve];
    writeln('Nueve: ', b);

    s := [Diez];
    writeln('Diez: ', b);

End.
