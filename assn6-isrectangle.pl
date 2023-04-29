point(1, 1).
point(1, 2).
point(2, 3).
point(1, 3).
point(2, 1).
point(2, 2).
point(3, 1).
point(3, 2).
point(3, 3).

rectangle(point(X1, Y1), point(X2, Y2), point(X3, Y3), point(X4, Y4)) :-
    A is (X1 - X3) * (X1 - X3), B is (Y1 - Y3) * (Y1 - Y3), D1 is (A + B),
    C is (X2 - X4) * (X2 - X4), D is (Y2 - Y4) * (Y2 - Y4), D2 is (C + D),
    D1 =:= D2.
