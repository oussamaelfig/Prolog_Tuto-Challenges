%student(Id, name([Last,First]), grades ([a1,a2,a3,test])).

student(1001, name([allteron, alice]), grades([92,75,100,85])).
student(1002, name([boberson, bob]), grades([50,64,73,66])).
student(1003, name([charleston, charlie]), grades([65,75,85,100])).
student(1004, name([davidson,dave]), grades([10,92,34,87])).
student(1005, name([ellenovitch, ellen]), grades([72,87,82,70])).


% How did alice do on asssignement 1 ?
% ?- student(_,name([_,alice]),grades([X|_])).
% X = 92.

% How did alice do on assignement 2 ?
% ?- student(_,name([_,alice]),grades([_,X|_])).
% X = 75.

% How did student 1002 do on the test ?
% ?- student(1002,_,grades([_,_,_,X])).
% ?- student(1002,_,grades(L)),last(L,Test).
% X = 66.

% Who got 100 on the test ?
% ?- student(_,X,grades([_,_,_,100])).
% ?- student(_,name(Name),grades(L)), last(L,Test), Test==100.
% X = name([charleston, charlie]).

% Did anyone get 100 on anything ?
% ?- student(_,name(Name),grades(L)), member(100,L).
% Name = [allteron, alice],
% L = [92, 75, 100, 85] ;
% Name = [charleston, charlie],
% L = [65, 75, 85, 100] ;

% What's each student's average grade ? (assume equal weighting).
% Name = [allteron, alice],
% A1 = 92,
% A2 = 75,
% A3 = 100,
% Test = 85,
% Average = 88 
% Name = [boberson, bob],
% A1 = 50,
% A2 = 64,
% A3 = 73,
% Test = 66,
% Average = 63.25 
% Name = [charleston, charlie],
% A1 = 65,
% A2 = 75,
% A3 = 85,
% Test = 100,
% Average = 81.25 
% Name = [davidson, dave],
% A1 = 10,
% A2 = 92,
% A3 = 34,
% Test = 87,
% Average = 55.75 
