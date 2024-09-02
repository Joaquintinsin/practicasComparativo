Program CallToC;

{$l libmylib.a}
// {$l inc.o}

Var x:integer; external name 'y';

Procedure inc_x; external name 'inc_y';

begin { programa principal }
    readln(x);
    inc_x;
    writeln('x=',x)
end.
