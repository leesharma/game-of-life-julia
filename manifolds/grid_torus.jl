module GridTorus
export neighbor_count

function neighbor_count(cg)
    neighbors = [nw(cg), n(cg), ne(cg)
                , w(cg),   cg ,  e(cg)
                ,sw(cg), s(cg), se(cg) ]
    reduce((a,b) -> a.+b, neighbors)
end

w(board) = [board[:,end:end] board[:,1:end-1]]
e(board) = [board[:,2:end] board[:,1:1]]
n(board) = [board[2:end,:]
           ;board[1:1,:]]
s(board) = [board[end:end,:]
           ;board[1:end-1,:]]

ne = n ∘ e
nw = n ∘ w
sw = s ∘ w
se = s ∘ e

end  # module GridTorus
