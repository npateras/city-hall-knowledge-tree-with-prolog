% P17172
% Epitheto apo Π

% Exercise 2

% Variables:
% L1 -> List 1
% L2 -> List 2
% Temp -> Tha apothikeuei to prosorino stoixeio kathe listas otan ginetai i 
%         anadromi me vasi ta ensomatomena katigorimata member kai memberchk.

common_list(L1, L2):- 
    member(Temp, L1),
    memberchk(Temp, L2),!.

%2os tropos me pliris enopoihsi, alla o prwtos tropos pio panw einai protimoteros:
% common_list(L1, L2) :- member(Temp, L1), member(Temp, L2).