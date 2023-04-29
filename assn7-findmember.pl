findmember(X,[X|_]).
findmember(X,[_|T]):- member(X,T).
