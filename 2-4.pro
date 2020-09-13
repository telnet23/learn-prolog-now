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

travel(X,Y) :- X=Y.
travel(X,Z) :- byCar(X,Y),travel(Y,Z).
travel(X,Z) :- byTrain(X,Y),travel(Y,Z).
travel(X,Z) :- byPlane(X,Y),travel(Y,Z).
