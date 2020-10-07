s(s(NP, VP)) --> np(NP, Count, subject), vp(VP, Count).

vp(vp(V), Count) --> v(V, Count).
vp(vp(V, NP), Count) --> v(V, Count), np(NP, _, object).

np(np(P), Count, Type) --> pronoun(P, Count, Type).
np(np(D, N), Count, Type) --> det(D, Count), n(N, Count, Type).
np(np(P, NP), Count, Type) --> pronoun(P, Count, Type), np(NP, Count, _).
np(np(D, AP, N), Count, Type) --> det(D, Count), ap(AP), n(N, Count, Type).
np(np(D, AP, N, PP), Count, Type) --> det(D, Count), ap(AP), n(N, Count, Type), pp(PP).
np(np(D, N, PP), Count, Type) --> det(D, Count), n(N, Count, Type), pp(PP).
np(np(P, PP), Count, P) --> pronoun(P, Count, P), pp(PP).

pp(pp(R, NP)) --> prep(R), np(NP, _, object).

ap(ap(A)) --> adj(A).
ap(ap(A1, A2)) --> adj(A1), adj(A2).

v(v(V, Count), Count) --> [V], {lex(V, v, Count)}.
n(n(N, Count, Type), Count, Type) --> [N], {lex(N, n, Count)}.
pronoun(pronoun(P, Count, Type), Count, Type) --> [P], {lex(P, pronoun, Count, Type)}.
det(det(D, Count), Count) --> [D], {lex(D, det, Count)}.
adj(adj(A)) --> [A], {lex(A, adj)}.
prep(prep(R)) --> [R], {lex(R, prep)}.



%%%% lexicon %%%%%%

%% lex/3
%% determiners
lex(the,det,_).
lex(a,det,singular).

%% nouns
lex(man,n,singular).
lex(men,n,plural).
lex(woman,n,singular).
lex(women,n,plural).
lex(apple,n,singular).
lex(apples,n,plural).
lex(pear,n,singular).
lex(pears,n,plural).
lex(table,n,singular).
lex(tables,n,plural).
lex(shower,n,singular).
lex(showers,n,plural).

%% verbs (all present tense)
lex(eat,v,plural).
lex(eats,v,singular).
lex(know,v,plural).
lex(knows,v,singular).

%%lex/4
%% pronouns
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

% lex/2
%% adjectives 
lex(old,adj).
lex(young,adj).
lex(low,adj).
lex(high,adj).
lex(big,adj).
lex(fat,adj).
lex(small,adj).
lex(large,adj).
lex(frightened,adj).

% prepositions
lex(on,prep).
lex(in,prep).
lex(over,prep).
lex(under,prep).
lex(of,prep).
