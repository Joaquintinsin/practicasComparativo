% Comentario 1 sola linea
/* Comentario varias lineas
 a) Pertenece (L, L1)
*/

pertenece(L, [L|_]) :- !.
pertenece(L, [_|L1]) :- pertenece(L, L1).

/* Length (Lista, N) */
longitud([], 0).
longitud([_|Xs], L) :- longitud(Xs, N), L is N+1.

/* Elimina(X, YS, ZS) donde ZS es la lista resultante de eliminar X de YS */
eliminar(X, [X], []).
eliminar(X, [X|Ys], Ys).
eliminar(X, [Y|Ys], [Y|Zs]) :- X\=Y, eliminar(X, Ys, Zs).

/* Concatenacion de listas:
    concat [] ys = ys
    concat xs [] = xs
    concat x:xs ys = x:concat xs ys
*/
concatenar([], Ys, Ys).
concatenar(Xs, [], Xs).
concatenar([_|Xs], Ys, [_|Ls]) :- concatenar(Xs, Ys, Ls).

% Interseccion de conjuntos
interseccion([], _, []).
interseccion(_, [], []).
interseccion([X|Xs], Ys, [X|Zs]) :- pertenece(X, Ys), !, interseccion(Xs, Ys, Zs).
interseccion([X|Xs], Ys, Zs) :- not(pertenece(X, Ys)), interseccion(Xs, Ys, Zs).


