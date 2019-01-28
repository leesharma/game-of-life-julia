module Board
export next, place, empty, from

function next(current_generation::BitArray;
              rules::Module,
              manifold::Module)
    isa(rules, Module)    || error("No rules module included.")
    isa(manifold, Module) || error("No manifold module included.")

    rules.next(current_generation, manifold)
end

function place(board, pattern, (i,j))
    board[i:i+size(pattern,1)-1, j:j+size(pattern,2)-1] = pattern
    board
end

function empty(i,j)
    falses(i,j)
end

function from(arr)
    BitArray(arr)
end

end  # module Board
