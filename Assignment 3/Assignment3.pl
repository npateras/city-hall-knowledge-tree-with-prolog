:- use_module(library(clpfd)).

sum_list([], 0).
sum_list([HEAD | TAIL], SUM) :-
   sum_list(TAIL, REST),
   SUM is HEAD + REST.
NEW_LIST=[].
 
line(LIST, N) :- 
 foreach(member(NUM, LIST), between(1, 9, NUM)),
 all_different(LIST),
 sum_list(LIST, SUM),
 SUM = N,
 add(NEW_LIST, LIST, NEW_LIST),
 (N = 24, LIST = [A, B, C], A=\=B, A=\=C, A=\=E, B=\=C, B=\=F, B=\=J, B=\=N, C=\=G, C=\=K, C=\=O);
 (N = 11, LIST = [E, F, G], E=\=F, E=\=G,F=\=G, F=\=J, F=\=N, G=\=K, G=\=O);
 (N = 22, LIST = [J,K, L], J=\=K, J=\=L, J=\=N, K=\=L, K=\=O,L=\=P);
 (N = 14, LIST = [N, O, P], N=\=O, N=\=P, O=\=P);
 (N = 17, LIST = [A, E], A=\=B, A=\=C, A=\=E, E=\=F, E=\=G);
 (N = 26, LIST = [B, F, J, N], B=\=C, B=\=F, B=\=J, B=\=N, A=\=B, E=\=F,F=\=G, F=\=J, F=\=N, J=\=K, J=\=L, J=\=N, N=\=O, N=\=P);
 (N = 15, LIST = [C, G, K, O], A=\=C, B=\=C, C=\=G, C=\=K, C=\=O, E=\=G,F=\=G, G=\=K, G=\=O,J=\=K, K=\=L, K=\=O, N=\=O, O=\=P);
 (N = 13, LIST = [L, P], J=\=L, K=\=L, L=\=P, N=\=P, O=\=P).

solve(LS) :- 
	LS = NEW_LIST,
   LIST = [A, B, C, E, F, G, J, K, L, N, O, P],
   RowsAndColumns =
      [ 
         [A, B, C],
         [E, F, G],
         [J, K, L],
         [N, O, P],
         [A, E],
         [B, F, J, N],
         [C, G, K, O],
         [L, P]
		],
   maplist(all_different, RowsAndColumns), 
   append(RowsAndColumns, Result_List),
   Result_List ins 1..9,
   A #= 24-B-C,
   B #= 26-F-J-N,
   C #= 15-G-K-O,
   E #= 11-F-G,
   E #= 17-A,
   J #= 22-K-L,
   N #= 14-O-P,
   L #= 13-P,
   labeling([], LIST).