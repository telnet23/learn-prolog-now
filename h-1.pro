travel(X, Y, C, by_car(X, Y, cost(C))) :-
    byCar(X, Y, C).
travel(X, Y, C, by_train(X, Y, cost(C))) :-
    byTrain(X, Y, C).
travel(X, Y, C, by_plane(X, Y, cost(C))) :-
    byPlane(X, Y, C).

travel(X, Z, CXZ, by_car(X, Y, cost(CXY), W)) :-
    byCar(X, Y, CXY),
    travel(Y, Z, CYZ, W),
    CXZ is CXY + CYZ.
travel(X, Z, CXZ, by_train(X, Y, cost(CXY), W)) :-
    byTrain(X, Y, CXY),
    travel(Y, Z, CYZ, W),
    CXZ is CXY + CYZ.
travel(X, Z, CXZ, by_plane(X, Y, cost(CXY), W)) :-
    byPlane(X, Y, CXY),
    travel(Y, Z, CYZ, W),
    CXZ is CXY + CYZ.



byCar(auckland,hamilton,20). 
byCar(hamilton,raglan,10). 
byCar(valmont,saarbruecken,100). 
byCar(valmont,metz,120). 

byTrain(metz,frankfurt,30). 
byTrain(saarbruecken,frankfurt,15). 
byTrain(metz,paris,20). 
byTrain(saarbruecken,paris,35). 

byPlane(frankfurt,bangkok,600). 
byPlane(frankfurt,singapore,800). 
byPlane(paris,losAngeles,700). 
byPlane(bangkok,auckland,1600). 
byPlane(singapore,auckland,1800). 
byPlane(losAngeles,auckland,2000).

