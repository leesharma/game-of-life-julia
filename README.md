# Game of Life (in Julia)

```
······🁢··🁢··················🁢··🁢···················
·······🁢🁢🁢········🁢🁢········🁢······················
··················🁢🁢·········🁢·🁢···················
······························🁢····················
··········🁢🁢·······································
·········🁢··🁢······································
··········🁢·🁢········🁢🁢····························
···········🁢·········🁢🁢····························
··········🁢🁢·······································
··········🁢🁢🁢······································
·········🁢🁢🁢🁢🁢···········🁢·························
········🁢🁢🁢🁢🁢·🁢·········🁢·🁢························
······🁢🁢··🁢🁢🁢·🁢🁢········🁢·🁢························
······🁢🁢·🁢··🁢🁢🁢··········🁢··············🁢🁢🁢········
·····🁢🁢······🁢··············🁢🁢·····················
```

My goal for this project is to learn Julia, particularly how to structure
programs, work with the type system, and optimize code.

This game uses a rectangular board that wraps along the edges and the
"standard" Game of Life rules:

  * Living cells stay alive if they have 2-3 live neighbors
  * Dead cells reinvigorate if they have 3 live neighbors

## Running the Simulation

If you haven't installed Julia, [do that first](https://julialang.org/downloads/).

After that, run the `main` program from the root project folder:

```bash
julia ./main.jl
```

## Goals

- [x] Write a basic Game of Life
- [ ] Add tests
- [ ] Allow for different board manifolds
- [ ] Allow for different rules sets
- [ ] Game of Life creatures DSL
- [ ] Benchmark code

## Credits

* [APL Wiki: Game of Life](https://aplwiki.com/GameOfLife)
