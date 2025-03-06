taskset 1 ./CFAL-bench/quickhull/baseline/hull ./input/25M_rectangle.dat rectangle-1
taskset 1 ./CFAL-bench/quickhull/baseline/hull ./input/25M_circle.dat circle-1
taskset 1 ./CFAL-bench/quickhull/baseline/hull ./input/25M_quadratic.dat quadratic-1

./CFAL-bench/quickhull/baseline/hull ./input/25M_rectangle.dat rectangle-32
./CFAL-bench/quickhull/baseline/hull ./input/25M_circle.dat circle-32
./CFAL-bench/quickhull/baseline/hull ./input/25M_quadratic.dat quadratic-32
