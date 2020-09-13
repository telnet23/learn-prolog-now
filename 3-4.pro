combine3([],[],[]).
combine3([A|B],[C|D],[j(A,C)|E]) :- combine3(B,D,E).
