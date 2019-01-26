module GameOfLife
export run
include("./board.jl")

function step(board::BitArray, iter; delay=0.5)
    println("Iteration $iter")
    show_bit_array(board)
    println("\n");
    sleep(delay)
    Board.next(board)
end

function run(board::BitArray; steps=50, step_time=0.5)
    for t ∈ 1:steps
        next = step(board, t; delay=step_time)
        if next == board
            println("Simulation converged at step $t.")
            return
        end
        board = next
    end
end

function show_bit_array(ba::BitArray)
    for i in 1:size(ba,1)
        for j in 1:size(ba,2)
            ba[i,j] ? print('🁢') : print('·')
        end
        println()
    end
end

end  # module GameOfLife
