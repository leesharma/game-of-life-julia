include("game_of_life.jl")
include("grid_torus.jl")

# set up the board
base = BitArray([0 1 1; 1 1 0; 0 1 0])
start_board = GridTorus.rotd(GridTorus.rotr(GridTorus.pad(base, (15, 51)); step=20); step=7)

# run the sim
GameOfLife.run(start_board; steps=200, step_time=0.1)
