cd accelerate-new
stack run quickhull
ACCELERATE_LLVM_NATIVE_THREADS=1 stack run quickhull -- +RTS -N1
