find_package(ZLIB REQUIRED)
if(USE_GMP)
  find_package(GMP)
endif()
if(UNIX AND NOT EMSCRIPTEN)
  find_package(Curses)
endif()
