helper(Head, Depth, Sum) :-
    Head = [],
    Sum = 0.

helper(Head, Depth, Sum) :-
    number(Head),
    Sum is Depth * Head.

helper([Head|Tail], Depth, Sum) :-
    helper(Head, Depth + 1, Sum1),
    helper(Tail, Depth, Sum2),
    Sum is Sum1 + Sum2.

depthSum(List, Sum) :- helper(List, 0, Sum), !.
