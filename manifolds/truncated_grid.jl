module TruncatedGrid
    export neighbor_count, rotr, rotl, rotu, rotd

    function neighbor_count(cg)
        neighbors = [rotu(rotl(cg)), rotu(cg), rotu(rotr(cg))
                    ,     rotl(cg) ,      cg ,      rotr(cg)
                    ,rotd(rotl(cg)), rotd(cg), rotd(rotr(cg)) ]
        reduce((a,b) -> a.+b, neighbors)
    end

    function rotr(board; step=1)
        [falses(size(board,1), 1) board[:,1:end-1]]
    end

    function rotl(board; step=1)
        [board[:,2:end] falses(size(board,1), 1)]
    end

    function rotu(board; step=1)
        [board[2:end,:]
        ;falses(1, size(board,2))]
    end

    function rotd(board; step=1)
        [falses(1, size(board,2))
        ;board[1:end-1,:]]
    end

end  # module TruncatedGrid
