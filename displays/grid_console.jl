module GridConsoleDisplay
export show_bit_array

function draw(ba::BitArray, iter::Int=-1)
    println("\n")
    iter==-1 || println("Iteration $iter")
    for i in 1:size(ba,1)
        for j in 1:size(ba,2)
            ba[i,j] ? print('🁢') : print('·')
        end
        println()
    end
end

end  # module GridConsoleDisplay
