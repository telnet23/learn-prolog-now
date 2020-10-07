s(s(NP, VP)) --> np(NP, Count, subject), vp(VP, Count).

vp(vp(V), Count) --> v(V, Count).
vp(vp(V, NP), Count) --> v(V, Count), np(NP, _, object).

np(np(P), Count, Type) --> pronoun(P, Count, Type).
np(np(D, N), Count, Type) --> det(D, Count), n(N, Count, Type).
np(np(P, NP), Count, Type) --> pronoun(P, Count, Type), np(NP, Count, _).

v(v(V, Count), Count) --> [V], {lex(V, v, Count)}.
n(n(N, Count, Type), Count, Type) --> [N], {lex(N, n, Count)}.
pronoun(pronoun(P, Count, Type), Count, Type) --> [P], {lex(P, pronoun, Count, Type)}.
det(det(D, Count), Count) --> [D], {lex(D, det, Count)}.



lex(the,det,_).
lex(a,det,singular).

lex(man,n,singular).
lex(men,n,plural).
lex(woman,n,singular).
lex(women,n,plural).
lex(apple,n,singular).
lex(apples,n,plural).
lex(pear,n,singular).
lex(pears,n,plural).

lex(eat,v,plural).
lex(eats,v,singular).
lex(know,v,plural).
lex(knows,v,singular).

lex(i,pronoun,singular,subject).
lex(we,pronoun,plural,subject).
lex(me,pronoun,singular,object).
lex(us,pronoun,plural,object).
lex(you,pronoun,_,_).
lex(he,pronoun,singular,subject).
lex(she,pronoun,singular,subject).
lex(him,pronoun,singular,object).
lex(her,pronoun,singular,object).
lex(they,pronoun,plural,subject).
lex(them,pronoun,plural,object).
lex(it,pronoun,singular,_).
