addition(X,Y,Z) :- 
Z is X + Y.
multiplication(X,Y,Z) :- 
Z is X * Y.
difference(X,Y,Z) :- 
Z is X - Y.
division(X,Y,Z) :- 
Z is X / Y.

calculate(X,Y,Z,Operation) :-
    (Operation = addition -> addition(X,Y,Z));
    (Operation = multiplication -> multiplication(X,Y,Z));
    (Operation = difference -> difference(X,Y,Z));
    (Operation = division -> division(X,Y,Z)).


//output
?- calculate(4,5,Z,addition).
Z = 9.

?- calculate(4,5,Z,multiplication).
Z = 20.

?- calculate(4,5,Z,difference).
Z = -1.

?- calculate(4,5,Z,division).
Z = 0.8.
