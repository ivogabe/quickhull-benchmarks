cd accelerate-old
ACCELERATE_LLVM_NATIVE_THREADS=1 stack run quickhull -- flat +RTS -N1
ACCELERATE_LLVM_NATIVE_THREADS=1 stack run quickhull -- split +RTS -N1
ACCELERATE_LLVM_NATIVE_THREADS=1 stack run quickhull -- rec-2 +RTS -N1
ACCELERATE_LLVM_NATIVE_THREADS=1 stack run quickhull -- rec-5 +RTS -N1
stack run quickhull -- flat
stack run quickhull -- split
stack run quickhull -- rec-2
stack run quickhull -- rec-5
