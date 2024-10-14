% SubSet(L1, L2) L2 subconjunto de L1

sub_set(_, []).
sub_set([L|L1], [L|L2]) :- sub_set(L1, L2).
sub_set([_|L1], L2) :- sub_set(L1, L2).

