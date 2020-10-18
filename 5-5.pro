helper([], []).
helper([H|T1], [H|T2]) :- helper(T1, T2).
helper([_|T1], T2) :- helper(T1, T2).

helper2(S, X) :-
    helper(S, Y), permutation(Y, X).

powerset(S, P) :- sort(S, T),
    findall(X, helper2(T, X), Q), sort(Q, P).

