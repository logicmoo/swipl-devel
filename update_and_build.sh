(
  apt-get build-dep swi-prolog

  apt-get update && apt-get install -y \
	libcurl4-openssl-dev \
	libssl-dev \
	libcairo-dev
# BiocManager requirements
  apt-get update && apt-get install -y \
	libxml2-dev \
	libudunits2-dev \
	libgeos++-dev \
	libtiff-dev \
	libopenmpi-dev

  apt-get install -y \
        build-essential cmake ninja-build pkg-config \
        ncurses-dev libreadline-dev libedit-dev \
        libgoogle-perftools-dev \
        libunwind-dev \
        libgmp-dev \
        libssl-dev \
        unixodbc-dev \
        zlib1g-dev libarchive-dev \
        libossp-uuid-dev \
        libxext-dev libice-dev libjpeg-dev libxinerama-dev libxft-dev \
        libxpm-dev libxt-dev \
        libdb-dev \
        libpcre3-dev \
        libyaml-dev \
        default-jdk junit4 \
        libssh-dev

   apt install -y qt5-default

)
(
#git pull
#git submodule update --init
#stty sane

 mkdir -p build
 (
 cd build
 cmake -DCMAKE_INSTALL_PREFIX=/usr -G "Unix Makefiles" ..
 #ninja
 #ctest -j 8
 #ninja install
 make
 ctest -j 8
 make install
 )
)
stty sane


