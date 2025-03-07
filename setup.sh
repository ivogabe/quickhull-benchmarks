rm -rf CFAL-bench
rm -rf input
rm -rf futhark
mkdir input
git clone https://github.com/diku-dk/CFAL-bench
cd CFAL-bench
git checkout 830226285ee1dee570078678b399032ee50f2015
git submodule init
git submodule update
cd quickhull
make gen_points
./gen_points 2000000000 2000000000 25000000 r > ../../input/25M_rectangle.dat
./gen_points 2000000000 2000000000 25000000 c > ../../input/25M_circle.dat
./gen_points 2000000000 2000000000 25000000 q > ../../input/25M_quadratic.dat
cd baseline
make hull
cd ../../..
git clone https://github.com/diku-dk/futhark.git
cd futhark
git checkout 861686f5d741606addf127a6df70cec0112401a1
make configure
make build
