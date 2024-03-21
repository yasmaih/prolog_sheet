homme(alexis).
homme(brice).
homme(chris).
homme(damien).

femme(naima).
femme(pauline).
femme(julie).
femme(yasmine).

liste_homme([alexis, brice, chris, damien]).
liste_femme([naima, pauline, julie, yasmine]).

suc(0).
suc(s(X)) :- suc(X).

plus(0, Y, Y) :- entiers_naturels(Y).
plus(s(X), Y, s(Z)) :- plus(X, Y, Z).

mult(0, _, 0) :- entiers_naturels(_).
mult(s(X), Y, Z) :- mult(X, Y, Z1), plus(Z1, Y, Z).

puissance(_, 0, s(0)) :- entiers_naturels(_).
puissance(X, s(Y), Z) :- puissance(X, Y, Z1), mult(X, Z1, Z).

% Conversion predicates
succ_to_dec(0, 0).
succ_to_dec(s(X), Y) :- succ_to_dec(X, Z1), Y is Z1 + 1.

dec_to_succ(0, 0).
dec_to_succ(X, s(Y)) :- X > 0, X1 is X - 1, dec_to_succ(X1, Y).

occurence(_,[],0).
occurence(X,[X|_],0).
occurence(X,[_|Y],A):- occurence(X,Y,Z),A is Z + 1.