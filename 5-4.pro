groundTerm(Term) :-
    nonvar(Term),
    =..(Term, [_ | X]),
    helper(X).
    
helper([]).
helper([H|T]) :-
    groundTerm(H),
    helper(T).

