traduit( fr( S, V, C ), yoda( C, S, V ) ).

%?- A = fr( 'Je', 'programme', 'en prolog' ), traduit( A, B ).
A = fr('Je', programme, 'en prolog'),
B = yoda('en prolog', 'Je', programme).

%?- A = yoda( 'permise', 'La documentation', 'est' ), traduit( B,A).
A = yoda(permise, 'La documentation', est),
B = fr('La documentation', est, permise).

%?- V = 'programme', traduit( fr( S, V, 'en Prolog' ), X ), S = 'Je'.
V = programme,
S = 'Je',
X = yoda('en Prolog', 'Je', programme).
