

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
