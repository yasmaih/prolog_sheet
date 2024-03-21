

%AICHI YASMINE 

effacer(_, [], []).  
effacer(X, [X|Q], Q). 
effacer(X, [T|Q], [T|L]) :-  
    effacer(X, Q, L).   


longueurpaire([], true).  
longueurpaire([_], false). 
longueurpaire([_, _ | R], V) :- longueurpaire(R, V).    


longueurimpaire([], false).  
longueurimpaire([_], true). 
longueurimpaire([_, _ | R], V) :- longueurimpaire(R, V).    


echanger_et_imprimer(L1, L2) :-
    append(L1, L2, Temp),        
    append(L2, L1, Temp),         
    write('L1 après échange : '), writeln(L2),
    write('L2 après échange : '), writeln(L1),
