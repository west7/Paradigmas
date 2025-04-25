% Define persons fact
person(gustavo).
person(valeria).
person(esteban).
person(jaime).
person(malena).

% Define the 'chatty' fact
chatty(gustavo).
chatty(valeria).

% Define the 'likes' fact
likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% Define the 'pairing' rule
pairing(X, Y) :- 
    X \= Y,
    likes(X, Y),
    likes(Y, X).
    
pairing(X, Y) :-
    X \= Y,
    (chatty(X) ; chatty(Y)).

% Define the 'seating' rule
seating(A, B, C, D, E) :- 
    person(A),
    person(B),
    person(C),
    person(D),
    person(E),
    pairing(A, B),
    pairing(B, C),
    pairing(C, D),
    pairing(D, E),
    pairing(E, A).
    
