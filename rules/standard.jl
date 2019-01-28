module StandardRules

function next(current_generation, manifold)
    neighbors = manifold.neighbor_count(current_generation)
    ((neighbors.==4) .& current_generation) .| (neighbors.==3)
end

end  # module StandardRules
