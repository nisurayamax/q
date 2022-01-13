

    git clone https://github.com/turtlecoin/violetminer
  
    cd violetminer
    git submodule update --init --recursive
    mkdir build
    cd build
    cmake -DENABLE_NVIDIA=OFF ..
    make
   
