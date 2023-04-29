divisible(X,Y) :- 0 is X mod Y, !.

divisible(X,Y) :- X > Y+1, divisible(X, Y+1).

isPrime(2) :- true,!.
isPrime(X) :- X < 2,!,false.
isPrime(X) :- not(divisible(X, 2)).






nToD(N,_,[]):- N < 0, !.
nToD(N,B,[N]):- N < B, !.
nToD(N,B,[Mod|R]):- Mod is N mod B, Div is N div B, nToD(Div,B,R).
pList([],_,0).
pList([H|T],E,Sum):- pList(T,E,TT),
Sum is (H**E)+TT.
armStrong(N,B):- B>1,
nToD(N,B,D), length(D,E), pList(D,E,N).



palindrome(L) :- reverse(L, L).
