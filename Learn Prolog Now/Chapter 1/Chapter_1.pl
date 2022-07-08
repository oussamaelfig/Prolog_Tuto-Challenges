% Exercise  1.1 
% Which of the following sequences of characters are atoms, which are variables, and which are neither?

vINCENT                     % Atom
Footmassage                 % Variable
variable23                  % atom
Variable2000                % Variable
big_kahuna_burger           % atom
'big  kahuna  burger'       % atom
big  kahuna  burger         % neither
'Jules'                     % atom
_Jules                      % Variable
'_Jules'                    % atom

% Exercise  1.2 
% Which of the following sequences of characters are atoms, which are variables, which are complex terms, and which are not terms at all? Give the functor and arity of each complex term.

loves(Vincent,mia)          % complex term, loves/2
'loves(Vincent,mia)'        % Atom
Butch(boxer)                % not an atom, variable, or complex term
boxer(Butch)                % complex term, boxer/1
and(big(burger),kahuna(burger))     % complex term and/2
and(big(X),kahuna(X))       % complex term and/2
_and(big(X),kahuna(X))      % not an atom, variable, or complex term
(Butch  kills  Vincent)     % not an atom, variable, or complex term
kills(Butch  Vincent)       % not an atom, variable, or complex term
kills(Butch,Vincent         % not an atom, variable, or complex term

% Exercise  1.3 
% How many facts, rules, clauses, and predicates are there in the following knowledge base? What are the heads of the rules, and what are the goals they contain?

   woman(vincent). 
   woman(mia).
   man(jules).
   person(X):-  man(X);  woman(X).
   loves(X,Y):-  father(X,Y).
   father(Y,Z):-  man(Y),  son(Z,Y).
   father(Y,Z):-  man(Y),  daughter(Z,Y).

% There are 3 facts and 4 rules which totals 7 clauses. The predicates are woman/1, man/1, person/1, loves/2, and father/2.
% The heads of the rules are the left-hand sides of a rule and are person(X), loves(X,Y), and father(Y,Z).
% The goals of the rules are the right-hand sides of a rule and are man(X), woman(X), knows(Y,X), man(Y), son(Z,Y), and daughter(Z,Y).


% Exercise  1.4 
% Represent the following in Prolog:

Butch is a killer.                         % killer(butch).
Mia and Marsellus are married.             % married(mia,marcellus).
Zed is dead.                               % dead(zed).
Marsellus kills everyone who gives Mia a footmassage.       % kills(marcellus,X) :- footmassage(mia,X).
Mia loves everyone who is a good dancer.   % loves(mia,X) :- good_dancer(X).
Jules eats anything that is nutritious or tasty.            % eats(jules,X) :- nutritious(X).
                                                            % eats(jules,X) :- tasty(X).

% Exercise  1.5 
% Suppose we are working with the following knowledge base:

   wizard(ron).
   hasWand(harry).
   quidditchPlayer(harry).
   wizard(X):-  hasBroom(X),  hasWand(X).
   hasBroom(X):-  quidditchPlayer(X).

% How does Prolog respond to the following queries?

wizard(ron).        % true
witch(ron).         % Undefined procedure witch/1
wizard(hermione).   % false
witch(hermione).    % Undefined procedure witch/1
wizard(harry).      % true
wizard(Y).          % Y=ron ; Y=harry
witch(Y).           % Undefined procedure witch/1