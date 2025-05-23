board([
    [_, 8, 4, _, 7, 9, 6, 1, _],
    [7, _, _, 3, _, 5, 8, _, 4],
    [1, 5, 9, _, 6, 4, _, 2, 3],
    [8, 7, 5, 6, 9, _, 2, 4, _],    
    [2, _, 3, 1, 8, 7, _, _, 6],
    [6, 9, _, 5, 4, _, 3, 7, 8],
    [4, 3, 7, _, 5, _, 1, 8, 2],
    [5, 1, 6, 7, 2, 8, _, _, 9],
    [_, _, _, 4, _, 1, 5, 6, 7]    
]).

sudoku(Board) :-
    board(Board).

print_sudoku :-   
    board(Rows), 
    maplist(writeln, Rows).