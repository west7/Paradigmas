% Questão 1
time('5am, wood again', 2, 'mg'). 
time('Amigos do Mortandela', 3, 'mg'). 
time('C++ ou uma linguagem misteriosa?', 2, 'go'). 
time('Lone Wolves', 2, 'df'). 
time('Monkeys', 1, 'go'). 
time('Teorema de Off', 1, 'df'). 
time('Teorema do Chin^es Viajante', 3, 'df'). 
time('Torcida P~ao de Alho', 1, 'mg'). 

campeao(X) :- time(X, 1, _). 
selecionado(X) :- campeao(X). 
selecionado(X) :- time(X, _, 'mg').

% Questão 2
p(a, b).
p(a, c).
p(b).

g(a).
g(b).
g(a, b).

% Questão 4
estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias'). 
estudante(carlos, 4, 'Engenharia de Energia'). 
estudante(diane, 2, 'Engenharias'). 
estudante(euler, 1, 'Engenharias'). 
estudante(fabio, 5, 'Engenharia de Software'). 
estudante(gustavo, 8, 'Engenharia de Software'). 
estudante(heitor, 7, 'Engenharia de Energia'). 
estudante(ian, 3, 'Engenharias'). 

matricula('C´alculo 1', ana). 
matricula('C´alculo 1', fabio). 
matricula('C´alculo 1', diane). 
matricula('C´alculo 1', euler). 
matricula('C´alculo 1', gustavo). 
matricula('C´alculo 1', ian). 

matricula('IAL', beto). 
matricula('IAL', diane). 
matricula('IAL', euler). 

matricula('APC', carlos). 
matricula('APC', fabio). 
matricula('APC', gustavo). 
matricula('APC', ian).

% (a)
tem_calouros(X) :-
    distinct(X,
    (matricula(X, A),
    estudante(A, 1, _))).

% (b)
turma_mista(X) :-
    matricula(X, A1),
    estudante(A1, _, 'Engenharia de Software'),

    matricula(X, A2),
    estudante(A2, _, 'Engenharia de Energia'),

    matricula(X, A3),
    estudante(A3, _, 'Engenharias'),
    !.

software() :-
    estudante(A, _, 'Engenharia de Software'),
    write(A), nl,
    fail.

software().

% Questão 5
male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).
female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

father(abraham, herb).
father(abraham, homer).
father(clancy, marge).
father(clancy, selma).
father(clancy, patty).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).

mother(mona, homer).
mother(mona, herb).
mother(jackie, marge).
mother(jackie, selma).
mother(jackie, patty).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).
mother(selma, ling).

uncle(U, N) :-
    father(G, U),
    father(G, P),
    mother(M, U),
    mother(M, P),
    P \= U,
    male(U),
    (father(P, N); mother(P, N)).

grandmother(G,  GS) :-
    mother(G, P),
    (father(P, GS); mother(P, GS)).

% Questão 6
% distance(S, I, V, A) :-
%     S is I + V

same_parity(X, Y) :-
    rem(X, 2) =:= rem(Y, 2).
