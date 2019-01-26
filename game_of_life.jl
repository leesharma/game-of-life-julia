module GameOfLife
export run
include("./board.jl")
include("./display.jl")

function step(board::BitArray, iter; delay=0.5)
    println("Iteration $iter")
    Display.show_bit_array(board)
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

end  # module GameOfLife
