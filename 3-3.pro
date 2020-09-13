combine2([],[],[]).
combine2([A|B],[C|D],[[A,C]|E]) :- combine2(B,D,E).
