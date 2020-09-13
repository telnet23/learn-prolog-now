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

travel(X,Y,by_car(X,Y)) :- byCar(X,Y).
travel(X,Y,by_train(X,Y)) :- byTrain(X,Y).
travel(X,Y,by_plane(X,Y)) :- byPlane(X,Y).

travel(X, Z, by_car(X, Y, W)) :-
    byCar(X, Y),
    travel(Y, Z, W).
travel(X, Z, by_train(X, Y, W)) :-
    byTrain(X, Y),
    travel(Y, Z, W).
travel(X, Z, by_plane(X, Y, W)) :-
    byPlane(X, Y),
    travel(Y, Z, W).
