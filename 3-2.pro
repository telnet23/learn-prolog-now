combine1([],[],[]).
combine1([A|B],[C|D],[A,C|E]) :- combine1(B,D,E).
