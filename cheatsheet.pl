

calcul(C):- R is C*C*C ,
display("Le resultat est :"),
write(R),
nl,
cube.


cube:-
display("Veuillez saisir un nombre: "),
read(C),
calcul(C).

calcul('stop'):= !.



p(X):- q(X), not(r(X)).
r(X):- w(X), not(s(X)).

q(a).
q(b).
q(c).

s(a).
s(c).

w(a).
w(b).


doubler([X],[X,X])
doubler([X|R],[X,X|Z]):-
doubler(R,Z).
