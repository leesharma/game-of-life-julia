module GameOfLife
export run
include("./board.jl")

function step(board::BitArray, iter; delay=0.5, rules=nothing, manifold=nothing, display=nothing)
    display.draw(board, iter)
    sleep(delay)
    Board.next(board; rules=rules, manifold=manifold)
end

function run(board::BitArray; steps=50, step_time=0.5, rules=nothing, manifold=nothing, display=nothing)
    for t ∈ 1:steps
        next = step(board, t; delay=step_time, rules=rules, manifold=manifold, display=display)
        if next == board
            println("Simulation converged at step $t.")
            return
        end
        board = next
    end
end

end  # module GameOfLife
