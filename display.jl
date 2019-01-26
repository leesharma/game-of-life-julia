module Display
export show_bit_array

function show_bit_array(ba::BitArray)
    for i in 1:size(ba,1)
        for j in 1:size(ba,2)
            ba[i,j] ? print('🁢') : print('·')
        end
        println()
    end
end

end  # module Display
