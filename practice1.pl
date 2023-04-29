member1(X, [X|T]).
member1(X, [H|T]) :- member1(X, T).
