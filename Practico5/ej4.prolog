hijo(luisPerez, josePerez).
hijo(mariaPerez, josePerez).
hijo(miguelPerez, josePerez).
hijo(luisPerez, lolaPerez).
hombre(lolaPerez).
padre(Y, X) :- hijo(X, Y), hombre(Y).
