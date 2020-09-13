byCar(auckland,hamilton). 
byCar(hamilton,raglan). 
byCar(valmont,saarbruecken). 
byCar(valmont,metz). 
    
byTrain(metz,frankfurt). 
byTrain(saarbruecken,frankfurt). 
byTrain(metz,paris). 
byTrain(saarbruecken,paris). 
    
byPlane(frankfurt,bangkok). 
byPlane(frankfurt,singapore). 
byPlane(paris,losAngeles). 
byPlane(bangkok,auckland). 
byPlane(singapore,auckland). 
byPlane(losAngeles,auckland).

travel(X,Y,go(X,Y)) :- byCar(X,Y).
travel(X,Y,go(X,Y)) :- byTrain(X,Y).
travel(X,Y,go(X,Y)) :- byPlane(X,Y).

travel(X, Z, go(X, Y, W)) :-
    byCar(X, Y),
    travel(Y, Z, W).
travel(X, Z, go(X, Y, W)) :-
    byTrain(X, Y),
    travel(Y, Z, W).
travel(X, Z, go(X, Y, W)) :-
    byPlane(X, Y),
    travel(Y, Z, W).
