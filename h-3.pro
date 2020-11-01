flatten([]) --> [].
flatten([H|T]) --> { H = [_|_] }, flatten(H), flatten(T).
flatten([H|T]) --> { H \= [_|_] }, [H], flatten(T).
