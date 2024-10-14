% MultiplicaLista(L1, F, L2)

multiplicaLista([], _, []).
multiplicaLista(Xs, 1, Xs).
multiplicaLista([X|Xs], A, [X1|Zs]) :- X1 is X*A, multiplicaLista(Xs, A, Zs).
