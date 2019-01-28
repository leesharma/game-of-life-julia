module Creature
include("./board.jl")

function glider()
    Board.from(
        [1 1 1;
         1 0 0;
         0 1 0]
    )
end

function lightweight_space_ship()
    Board.from(
        [0 1 0 0 1;
         1 0 0 0 0;
         1 0 0 0 1;
         1 1 1 1 0]
    )
end

function l_tetromino()
    Board.from(
        [1 1 1;
         1 0 0]
    )
end

function star_tetromino()
    Board.from(
        [0 1 0;
         1 1 1]
    )
end

end  # module Creature
