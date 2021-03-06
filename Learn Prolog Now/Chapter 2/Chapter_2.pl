%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%Unification and Proof Search%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Exercise  2.1 
% Which of the following pairs of terms unify? Where relevant, give the variable instantiations that lead to successful unification.

bread  =  bread             %True
'Bread'  =  bread           %True
'bread'  =  bread           %True
Bread  =  bread             %True, Bread = bread    
bread  =  sausage           %false
food(bread)  =  bread       %false
food(bread)  =  X           %X=food(bread)
food(X)  =  food(bread)     %X=bread
food(bread,X)  =  food(Y,sausage)               %Y=bread    X=sausage
food(bread,X,beer)  =  food(Y,sausage,X)        %false
food(bread,X,beer)  =  food(Y,kahuna_burger)    %false
food(X)  =  X                                   %X=food(X)
meal(food(bread),drink(beer))  =  meal(X,Y)     %X=food(bread)  Y=drink(beer)
meal(food(bread),X)  =  meal(X,drink(beer))     %FALSE


% Exercise  2.2 
% We are working with the following knowledge base:

   house_elf(dobby).
   witch(hermione).
   witch('McGonagall').
   witch(rita_skeeter).
   magic(X):-  house_elf(X).
   magic(X):-  wizard(X).
   magic(X):-  witch(X).

% Which of the following queries are satisfied? Where relevant, give all the variable instantiations that lead to success.

?-  magic(house_elf).           %No, Error: undefined procedure wizard/1
?-  wizard(harry).              %No, Error: undefined procedure wizard/1
?-  magic(wizard).              %No, Error: undefined procedure wizard/1
?-  magic('McGonagall').        %No, Error: undefined procedure wizard/1
?-  magic(Hermione).            %Yes, Hermione = dobby ;
                                %Error: undefined procedure wizard/1
% Draw the search tree for the fifth query magic(Hermione).
?- magic(Hermione).
    Call: (7) magic(_G312)
    Call: (8) house_elf(_G312)
    Exit: (8) house_elf(dobby)
    Exit: (7) magic(dobby)
Hermione = dobby ;
    Redo: (7) magic(_G312)
    Error: undefined procedure wizard/1


% Exercise  2.3 
% Here is a tiny lexicon (that is, information about individual words) and a mini grammar consisting of one syntactic rule (which defines a sentence to be an entity consisting of five words in the following order: a determiner, a noun, a verb, a determiner, a noun).

   word(determiner,a).
   word(determiner,every).
   word(noun,criminal).
   word(noun,'big  kahuna  burger').
   word(verb,eats).
   word(verb,likes).
   
   sentence(Word1,Word2,Word3,Word4,Word5):-
         word(determiner,Word1),
         word(noun,Word2),
         word(verb,Word3),
         word(determiner,Word4),
         word(noun,Word5).
% What query do you have to pose in order to find out which sentences the grammar can generate? List all sentences that this grammar can generate in the order that Prolog will generate them in.

% a criminal eats a criminal
% a criminal eats a big kahuna burger
% a criminal eats every criminal
% a criminal eats every big kahuna burger
% a criminal likes a criminal
% a criminal likes a big kahuna burger
% a criminal likes every criminal
% a criminal likes every big kahuna burger
% a big kahuna burger eats a criminal
% a big kahuna burger eats a big kahuna burger
% a big kahuna burger eats every criminal
% a big kahuna burger eats every big kahuna burger
% a big kahuna burger likes a criminal
% a big kahuna burger likes a big kahuna burger
% a big kahuna burger likes every criminal
% a big kahuna burger likes every big kahuna burger
% every criminal eats a criminal
% every criminal eats a big kahuna burger
% every criminal eats every criminal
% every criminal eats every big kahuna burger
% every criminal likes a criminal
% every criminal likes a big kahuna burger
% every criminal likes every criminal
% every criminal likes every big kahuna burger
% every big kahuna burger eats a criminal


% Exercise  2.4 
% Here are six Italian words:

astante , astoria , baratto , cobalto , pistola , statale .

% They are to be arranged, crossword puzzle fashion, in the following grid:

% You can find the grid in the page : http://www.let.rug.nl/bos/lpn//lpnpage.php?pagetype=html&pageid=lpn-htmlse7

% The following knowledge base represents a lexicon containing these words:

   word(astante,  a,s,t,a,n,t,e).
   word(astoria,  a,s,t,o,r,i,a).
   word(baratto,  b,a,r,a,t,t,o).
   word(cobalto,  c,o,b,a,l,t,o).
   word(pistola,  p,i,s,t,o,l,a).
   word(statale,  s,t,a,t,a,l,e).

% Write a predicate crossword/6 that tells us how to fill in the grid. The first three arguments should be the vertical words from left to right, and the last three arguments the horizontal words from top to bottom.

crosswd(H1,H2,H3,V1,V2,V3) :-
    word(H1,_,A,_,B,_,C,_),
    word(H2,_,D,_,E,_,F,_),
    word(H3,_,G,_,H,_,I,_),
    word(V1,_,A,_,D,_,G,_),
    word(V2,_,B,_,E,_,H,_),
    word(V3,_,C,_,F,_,I,_).
