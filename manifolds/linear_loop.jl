module LinearLoop
export neighbor_count

function neighbor_count(cg)
    neighbors = [rotu(cg), cg, rotd(cg)]
    reduce((a,b) -> a.+b, neighbors)
end

function rotd(board; step=1)
    [board[end-step+1:end]; board[1:end-step]]'
end

function rotu(board; step=1)
    [board[step+1:end]; board[1:step]]'
end

end  # module LinearLoop
