unifiable(L1, Term, L2) :-
    L1 = [],
    L2 = [].

unifiable([H1|T1], Term, L2) :-
    \+ H1 = Term,
    !,
    unifiable(T1, Term, L2).

unifiable([H|T1], Term, [H|T2]) :-
    unifiable(T1, Term, T2).

