cd futhark
CFLAGS='-Ofast -march=native -mtune=native' cabal run futhark -- bench --backend=multicore ../futhark-quickhull/quickhull.fut --no-tuning --pass-option=--num-threads=1
CFLAGS='-Ofast -march=native -mtune=native' cabal run futhark -- bench --backend=multicore ../futhark-quickhull/quickhull.fut --no-tuning
