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
