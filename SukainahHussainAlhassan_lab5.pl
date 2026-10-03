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
female(liza).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, homer).
parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).
parent(homer, bart).
parent(homer, liza).
parent(homer, maggie).
parent(marge, bart).
parent(marge, liza).
parent(marge, maggie).
parent(selma, ling).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
grandfather(X, Z) :- male(X), parent(X, Y), parent(Y, Z).
aunt(X, Y) :- female(X), parent(P, Y), sibling(X, P).
uncle(X, Y) :- male(X), parent(P, Y), sibling(X, P).
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2), X \= Y.
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), parent(Z, Y).
