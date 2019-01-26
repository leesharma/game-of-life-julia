module Board
export next
include("./grid_torus.jl")

function next(current_generation::BitArray)
    neighbors = GridTorus.neighbor_count(current_generation)
    ((neighbors.==4) .& current_generation) .| (neighbors.==3)
end

end  # module Board
