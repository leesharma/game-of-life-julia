module Board
export next
include("./grid_torus.jl")

function next(current_generation::BitArray)
    neighbors = GridTorus.neighbor_count(current_generation)
    ((neighbors.==4) .& current_generation) .| (neighbors.==3)
end

function place(board, pattern, (i,j))
    board[i:i+size(pattern,1)-1, j:j+size(pattern,2)-1] = pattern
    board
end

end  # module Board
