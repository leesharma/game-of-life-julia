module LinearConsoleDisplay
export show_bit_array

function draw(ba::BitArray, _=nothing)
    for i in 1:size(ba,1)
        for j in 1:size(ba,2)
            ba[i,j] ? print('🁢') : print('·')
        end
        println()
    end
end

end  # module LinearConsoleDisplay
