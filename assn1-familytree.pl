parent(pete, ian).
parent(ian, peter).
parent(ian, lucy).
parent(lou, pete).
parent(lou, pauline).
parent(cathy, ian).

female(cathy).
female(lucy).
female(pauline).
female(lou).

male(ian).
male(pete).
male(peter).

mother(X, Y) :- parent(X, Y), female(X).
offspring(X, Y) :- parent(Y, X).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
siblings(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
sister(X, Y) :- siblings(X, Y), female(X).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).
aunty(X, Y) :- female(X), parent(Z, Y), siblings(X, Z).

happy(X) :- parent(X, Y), siblings(_, Y), write(X), write(' is happy'), nl, false.

predecessor(X, Z) :- parent(X, Z).
predecessor(X, Z) :- parent(X, Y), predecessor(Y, Z).

