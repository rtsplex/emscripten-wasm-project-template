# Use the emscripten SDK base image (specific version, since we do not want to break out build pipeline on every update of emscripten sdk)
 FROM emscripten/emsdk:2.0.29

 # Install required tools that are useful for your project i.e. ninja-build
 # todo: Make this work. For some reason cmake cant locate libsdl, even though the base image of the emscripten sdk is ubuntu
 # and so should work with standard work paths
 RUN apt update && apt install -y  libsdl2-dev libsdl2-2.0-0 libjpeg-dev libwebp-dev libtiff5-dev libsdl2-image-dev libsdl2-image-2.0-0 \
    libmikmod-dev libfishsound1-dev libsmpeg-dev liboggz2-dev libflac-dev libfluidsynth-dev libsdl2-mixer-dev libsdl2-mixer-2.0-0 \
    libfreetype6-dev libsdl2-ttf-dev libsdl2-ttf-2.0-0
