traduit( fr( S, V, C ), yoda( C, S, V ) ).
fr2jp( 'je', 'watashi wa' ).
fr2jp( 'boite', 'hako o' ).
fr2jp( 'ouvrir', 'akemasu' ).
jp2fr( A, B ) :- fr2jp( B, A ).
traduitFrJp( fr( Fs, Fv, Fc ), jp( Js, Jc, Jv ) ) :-
 fr2jp( Fs, Js ),
 fr2jp( Fv, Jv ),
 fr2jp( Fc, Jc ).


% ?- fr2jp( 'je', A ).
A = 'watashi wa'.

% ?- jp2fr( 'watashi wa', A ).
A = je.

% ?- A = fr( 'je', 'ouvrir', 'boite' ), traduitFrJp( A, B ).