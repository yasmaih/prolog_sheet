

homme(_).
femme(_).

homme(alexis).
homme(brice).
homme(chris).
homme(damien).

femme(naima).
femme(pauline).
femme(julie).
femme(yasmine).

liste_homme([
homme(alexis),
homme(brice),
homme(chris),
homme(damien),
])

liste_femme([
femme(naima).
femme(pauline).
femme(julie).
femme(sarah).
])


%Les successeurs
%Vous avez une suite des entiers naturels telle que nous l avons défini en cours
suc(0).
suc(s(X)) : - sucC(X).
% Donnez des prédicats des opérations arithmétiques comme
% plus/3
%mult/3
% puissance/3
% Et des prédicats de conversion
% succ_to_dec/2
% dec_to_succ/2*/

entiers_naturels(0).
entiers_naturels(s(X)) : -entiers_naturels(X).
plus (A, 0,A) : - entiers_naturels(A).
plus (0,A, A) : -entiers_naturels(A).
plus (5 (A) , B, C) : -plus (A, s(B) ,C).

puissance(X,0,s(0)):-entiers_naturels(X).
puissance(O,X,O):-entiers_naturels(X).
puissance(X,s(Y),)
mult (X, 0,0) : -entiers_naturels(X) .
mult (0,X,0) : -entiers_naturels(X).
mult(s(0) ,A,A) : -entiers_naturels (A).
mult (A,s(0) ,A) : -entiers_naturels(A).
mult(X,s(Y) ,Z) :- mult(X, Y, Z1), plus (X, Z1, Z).


succ_to_dec(0,0).
succ_to_dec(s(X),Y):- succ_to_dec(X,Z1), Y is Z1+1.

occur(_,[],0).
occur([],_,1).
occur(X,[X],1).

occur(X,[X|R],N):-
occur(X,R,N1),
N is N1.

occur(X,[_|R],N):- occur(X,R,N).