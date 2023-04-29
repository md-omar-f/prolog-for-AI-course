con(L1, L2, L) :- append(L1, L2, L).

last1(L,[A1]):- append(_,[A1],L).

inser(X,A,L,R):- append(P1,[A|P2],L),append(P1,[X,A|P2],R).

delete2([],L1,L1).
delete2([H|T],L1,L3):- delete2(H,L1,R2),delete2(T,R2,L3).

/*
 ?- del(4, [1,2,3,4,5,6],Y).
*/

del( X, [X| Tail], Tail).
del( X, [Y| Tail], [Y|Tail1]) :- del( X, Tail, Tail1).



add(X,L,[X|L]).
add(X,[L|H],[L|R]):- add(X,H,R).
permut([],[]).
permut([L|H],R):- permut(H,R1),add(L,R1,R).
permutations(L,R):- findall(P,permut(L,P),R).


my_reverse([],[]).
my_reverse([H|T],L):- my_reverse(T,R),append(R,[H],L).

/*
?- my_reverse([m,e,l,a,n,i,e],R).
   R = [e,i,n,a,l,e,m]
*/
