include("game_of_life.jl")
include("board.jl")


# game of life creatures
glider = Board.from(
    [1 1 1;
     1 0 0;
     0 1 0]
)
lightweight_space_ship = Board.from(
    [0 1 0 0 1;
     1 0 0 0 0;
     1 0 0 0 1;
     1 1 1 1 0]
)
l_tetromino = Board.from(
    [1 1 1;
     1 0 0]
)

star_tetromino = Board.from(
    [0 1 0;
     1 1 1]
)


# set up the board
board = Board.empty(11, 11)
board = Board.place(board, star_tetromino, (5, 5))
start_board = board


# run the sim
GameOfLife.run(start_board; steps=100, step_time=0.1)
