flatten([],[]).
flatten([H|T],X) :-
    flatten(H,XH),
    flatten(T,XT),
    append(XH,XT,X).
flatten([H|T],[XH|XT]) :-
	H \= [],
	H \= [_|_],
	H = XH,
	flatten(T,XT).
