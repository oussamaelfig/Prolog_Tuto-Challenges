% 5.1 UNIFICATION
% Ces exercices servent à pratiquer l’écriture de requête simple. Chaque exercice propose une requête à
% écrire dans l’environnement Prolog. Vous devriez essayer de prédire la réponse qui sera donnée avant
% de lancer la requête. Il ne reste qu’à lancer la requête pour vérifier votre prédiction.
% 5.1.1
?- A = allo.
A = allo.

% 5.1.2
?- a( b, c ) = a( X, Y ).
X=b,
Y=c.

% 5.1.3
?- a( b, c ) = e( X, Y ).
false.

% 5.1.4
?- a( X, c ) = a( b, Y ).
X=b,
Y=c.

% 5.1.5
?- A = 5, B = A.
A = B, B = 5.

% 5.1.6
?- A = B, B = 5.
A=B,
B=5

% 5.1.7
?- B = 2, C = ca, A = ( B, C ).
B = 2,
C = ca,
A = (2, ca).

% 5.1.8
?- allo( 3, 4 ) = allo( B, 4 ), C = ca( B ), A = ( B, C ).
B = 3,
C = ca(3),
A = (3, ca(3)).

% 5.1.9
?- phrase( 'Ottawa', 'est', 'une ville' ) = phrase( Su, Ve, Ob ).
Su='Ottawa',
Ve='est',
Ob='une ville'.

% 5.1.10
?- phrase( 'Ottawa', 'est', 'une ville' ) = phrase( Su, Ve, Ob ), A = yoda( Ob, Su, Ve ).
Su='Ottawa',
Ve='est',
Ob='une ville',
A =  yoda('une ville', 'Ottawa', 'est').

% 5.1.11
?- A = 2, B = A + 1.
A = 2,
B = 2 + 1.

% 5.1.12
?- A = 2, B is A + 1.
A = 2,
B = 3.

% 5.1.13
?- A is 2, B = A + 1.
A = 2,
B = 2+1.

% 5.1.14
?- A is 2, B is A + 1.
A = 2,
B = 3.

% 5.1.15
?- 1 + 2 = A + B.
A = 1,
B = 2.

% 5.1.16
?- 1 + 2 == A + B.
false

% 5.1.17
?- A = 1, B = 2, 1 + 2 == A + B.
A = 1,
B = 2.

% 5.1.18
?- 1 + 2 == A + B, A = 1, B = 2.
false.

% 5.1.19
?- 1 + 2 = A + B, A = 1, B = 2.
A = 1,
B = 2.

% 5.1.20
?- A is B + 2, B = 3.
ERROR