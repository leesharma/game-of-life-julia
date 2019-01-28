include("game_of_life.jl")
include("board.jl")
include("creature.jl")

# injected parameters
include("./manifolds/grid_torus.jl")
include("./manifolds/truncated_grid.jl")
include("./manifolds/linear_loop.jl")
include("./rules/standard.jl")
include("./rules/linear.jl")
include("./displays/grid_console.jl")


# set up the board
board = Board.empty(11, 11)
board = Board.place(board, Creature.star_tetromino(), (5, 5))
# board = Board.place(board, Creature.lightweight_space_ship(), (5, 5))
start_board = board
# start_board = Board.from([0,1,0,1,0,1,0,1,1,0,1,0,0,0,0,1,0,1,0,0,1,0,0,1]')

# run the sim
GameOfLife.run(start_board; rules=StandardRules,
                            manifold=TruncatedGrid,
                            display=GridConsoleDisplay,
                            steps=100,
                            step_time=0.1)
