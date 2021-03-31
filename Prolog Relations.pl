/*checking relationships*/

father(dan,sofia).
father(dan,carl).
father(dan,julia).
father(carl,john).
father(john,mark).

mother(lisa,sofia).
mother(lisa,carl).
mother(lisa,julia).
mother(elena,john).
mother(teresa,mark).


male(dan).
male(john).
male(carl).
male(mark).

female(sofia).
female(julia).
female(elena).
female(teresa).

sibling(X,Y):-
    father(Z,X),
    father(Z,Y),
    mother(T,X),
    mother(T,Y),
    write(X), write(' is a sibling of '), write(Y), nl.

sister(X,Y):-
    female(X),
    female(Y),
    father(Z,X),
    father(Z,Y),
    mother(T,X),
    mother(T,Y),
    write(X), write(' is a sister of '), write(Y), nl.

grandson(X,Y):-
    father(X,Z),
    father(Z,Y),
    write(Y), write(' is the grandson of '), write(X), nl.

descendant(X,Y):-
    father(X,Z),
    father(Z,T),
    father(T,Y),
    write(Y), write(' is a descendant of '), write(X), nl.

/*function that checks subsequence*/
subsequence([A|L1],[A|L2]):-
     subsequence(L1,L2).
subsequence([C|L1],[_|L2]) :-
     subsequence([C|L1],L2).
     subsequence([],_).

/*function for producing union of two lists*/

List_unite(L1,L2):-
	Append(L1,L2,L3),
	Write(L3), write( ‘ is the union of list1 and list2 ‘).

/*function that converts kms to miles*/

total_kms(100).

convert_to_Miles(X):-
    total_kms(Y),
    X is (Y/1.609),
    write(X).

