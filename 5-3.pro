set_difference(S, T, D) :-

    findall(X, ((member(X, S), \+ member(X, T)); (\+ member(X, S), member(X, T))), D).
