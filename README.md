# Quickhull

This repository contains various implementations of Quickhull in Accelerate, and benchmarks of those implementations in the old version of Accelerate and an new version, that is currently in development.

Quickhull is a geometric algorithm that computes the convex hull of a set of points. It is in structure similar to Quicksort, as it also is a divide-and-conquer recursive algorithm. Instead of using recursion, this algorithm can also be implemented using [NESL-style flattening](https://www.cs.cmu.edu/~guyb/papers/Nesl3.1.pdf) as for instance presented in [Fast Two Dimensional Convex Hull on the GPU](https://faculty.iiit.ac.in/~kkishore/ainaHull.pdf) (Pseudocode in algorithm 2).

This benchmark is taken from the [CFAL benchmarks](https://github.com/diku-dk/CFAL-bench/tree/main/quickhull), a project where we compared functional parallel array languages. The fully flattened version in this repository is a further optimized version of the implementation we wrote for CFAL. Besides a fully flattened version, we now also have partially recursive, partially flattened variants.

## Instructions
To run the benchmarks, first install Haskell and Stack via [GHCup](https://www.haskell.org/ghcup/), LLVM 15 (for instance via the [automatic installation script](https://apt.llvm.org)) and coinor-cbc.

Run `sh ./setup.sh` to generate the input data and compile the reference implementation and set up Futhark. Then execute `sh ./run-accelerate-new.sh`, `sh ./run-accelerate-old.sh`, `sh ./run-baseline.sh` or `sh ./run-futhark.sh` to run the Accelerate implementations, the ParlayLib baseline or the Futhark implementation.
