%Predicates:
%1-

loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet).

%2-
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

%3-
happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert) :- 
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :- dances(alice),
    write('When Alice is happy and With Albert she dances').

%4-  
near_water(bob).

swims(bob) :-
    happy(bob),
    near_water(bob).

swims(bob) :- near_water(bob).


%5-
parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

%9.3 - Prolog Lists

% X=[].
% X=[a].
% X=[1,2,3,4].
% [1,2,3]=[1,2,3].

% [X,Y,Z]=[1,2,3].
% X=1,
% Y=2,
% Z=3.

% X=[a|[]].
% X=[a].

% L=[1|[2|[3]]].
% L=[1,2,3].

% [a|b]=[a,b].
% false.

% X=[a|b].
% X=[a|b].

% X=[[a|[b|[]]] | [[c|[d|[]]]]].
% X=[[a,b],[c,d]].

% [1,2,3,4]=[H|T].
% H=1,
% T=[2,3,4].

% [H|T]=[a].
% H=a,
% T=[].

% [H|T]=[]. %each pipe assume that we re going to have at least one element in our list
% false


% [1,2,3,4]=[_,_|X].
% X = [3,4].

% [1,2,3,4]=[_,_,_,X].
% X=4.

% [1,2,3,4]=[_,_,_|[X]].
% X=4.



