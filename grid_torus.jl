module GridTorus
export neighbor_count, rotr, rotl, rotu, rotd, pad

function neighbor_count(cg)
    neighbors = [rotu(rotl(cg)), rotu(cg), rotu(rotr(cg))
                ,     rotl(cg) ,      cg ,      rotr(cg)
                ,rotd(rotl(cg)), rotd(cg), rotd(rotr(cg)) ]
    reduce((a,b) -> a.+b, neighbors)
end

function rotr(board; step=1)
    [board[:,end-step+1:end] board[:,1:end-step]]
end

function rotl(board; step=1)
    [board[:,step+1:end] board[:,1:step]]
end

function rotu(board; step=1)
    [board[step+1:end,:]
    ;board[1:step,:]]
end

function rotd(board; step=1)
    [board[end-step+1:end,:]
    ;board[1:end-step,:]]
end

function pad(board::BitArray, (goal_h,goal_w))
    curr_h, curr_w = size(board)
    [
        [board falses((curr_h, goal_w-curr_w))];
        falses((goal_h-curr_h, goal_w))
    ]
end

end  # module GridTorus
