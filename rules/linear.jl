module LinearRules

function next(current_generation, manifold)
    # Living cells with one living neighbor stay alive
    # Dead cells with two living neighbors come to life
    neighbors = manifold.neighbor_count(current_generation)
    neighbors.==2
end

end  # module LinearRules
