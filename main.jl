include("game_of_life.jl")
include("board.jl")


# game of life creatures
glider = BitArray(
    [1 1 1;
     1 0 0;
     0 1 0]
)
lightweight_space_ship = BitArray(
    [0 1 0 0 1;
     1 0 0 0 0;
     1 0 0 0 1;
     1 1 1 1 0]
)
l_tetromino = BitArray(
    [1 1 1;
     1 0 0]
)

star_tetromino = BitArray(
    [0 1 0;
     1 1 1]
)


# set up the board
board = falses(11, 11)
board = Board.place(board, star_tetromino, (5, 5))
start_board = board


# run the sim
GameOfLife.run(start_board; steps=100, step_time=0.1)
