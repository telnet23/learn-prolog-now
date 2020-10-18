split(L, P, N) :-
    L = [],
    P = [],
    N = [].

split([H|LT], [H|P], N) :-
    H >= 0,
    !,
    split(LT, P, N).

split([H|LT], P, [H|N]) :-
    H < 0,
    !,
    split(LT, P, N).

