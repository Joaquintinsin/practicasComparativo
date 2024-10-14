max(X, Y, Y) :- X =< Y.
max(X, Y, X) :- X > Y.
/*  ineficiente porque entra en dos ramas cuando no tiene que entrar
    con que solo entre en la primera ya es suficiente
    por ejemplo max 2 3 Y es ineficiente

    se puede hacer mas eficiente poniendo el cut justo despues del primer predicado de la primera sentencia:
*/

maxEfic(X, Y, Y) :- X =< Y, !.
maxEfic(X, Y, X) :- X > Y.
/*  en caso de que se ingrese un X>Y, no se nota la eficiencia porque de igual manera va a tener que ir a buscar en el otro hecho
    ese seria como el peor caso del cut, que se ejecuten todas las ramas, no tiene efecto

    va a ser eficiente cuando encuentres el primer exito y no necesites mas que los que encontraste.
*/
maxEfic2(X, Y, X) :- X >= Y, !.
maxEfic2(X, Y, Y) :- X < Y.

