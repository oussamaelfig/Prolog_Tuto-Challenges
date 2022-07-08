% Écrivez un prédicat qui échange les deux premières valeurs d’une liste.*
% Exemple : echanger( [a,b,c,d], W ). W = [b,a,c,d].
% Essayez différents appels avec votre prédicat.

echanger([],[]).
echanger([A,B|C],[B,A|C]).

% 5.3.2
% Écrivez un prédicat qui compte le nombre d’occurrences d’une valeur dans une liste.*
% Exemple : compter( a, [ a, s, d, f, g, a, s, d, a, s ], W ). W = 3.
% Essayez différents appels avec votre prédicat.

compter(_, [], 0).
compter(A, [A|S], X) :- compter(A, S, Y), X is Y+1.
compter(A, [B|S], X) :- \+A==B, compter(A,S,X).


%Length
%len(List,Length). is true if length is the number of element in the list.
len([],0).
len([_|T],N) :- len(T,M), N is M+1. 


%del_first(X,L,R). where R is the result of removing the first instance X from L
del_first(X,[X|T],T).
del_first(X,[H|T],[H|R]):-
    X\=H,
    del_first(X,T,R).

%del(X,L,R). where R is the result of removing *any* instance of X from L
del(X,[X|T],T).
del(X,[H|T],[H|R]):-
    del(X,T,R).


%selects(L,R). true if L is a subset of R
selects([],_).
selects([H|T],R):-
    del(H,R,R1),
    selects(T,R1).

%mySort(L,R) is true if R is the sorted version of list L
mySort([],[]).
mySort([H|T],Result):-
    mySort(T,SortedTail),
    insert(H,SortedTail,Result).

%insert (6,[3,5,7,9]) => [3,5,6,7,9]
insert(X,[],[X]).
insert(X,[H|T],[X,H|T]):-
    X=<H.
insert(X,[H|T],[H|R]):-
    X>H,
    insert(X,T,R).