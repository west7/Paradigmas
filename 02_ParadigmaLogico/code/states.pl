cidade('Brasília', df).
cidade('Gama', df).
cidade('Taguatinga', df).
cidade('Belo Horizonte', mg).
cidade('Contagem', mg).
cidade('Betim', mg).
cidade('São Paulo', sp).
cidade('Guarulhos', sp).
cidade('Campinas', sp).
capital('Brasília').
capital('Belo Horizonte').
capital('São Paulo').
regiao('Centro-Oeste', df).
regiao('Sudeste', mg).
regiao('Sudeste', sp).

capital_report(_) :-
	write('Capitais:'), nl,
	capital(X),
	tab(4), write(X), nl,
	fail.

capital_report(_, _) :-
    write('Capitais e suas regiões:'), nl,
    capital(X),
    cidade(X, Y),
    regiao(Z, Y),
    tab(4), write(X), write(' - '), write(Z), nl,
    fail.

male(homer).
male(bart).
female(marge).
female(lisa).
female(maggie).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).

sinblings(X, Y) :- father(F, X), father(F, Y).