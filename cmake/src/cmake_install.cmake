# Install script for directory: C:/Users/amigo/source/repos/LMMS/lmms/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/mingw32")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/Users/amigo/source/repos/LMMS/lmms/cmake/Debug/lmms.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/Users/amigo/source/repos/LMMS/lmms/cmake/Release/lmms.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/Users/amigo/source/repos/LMMS/lmms/cmake/MinSizeRel/lmms.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE EXECUTABLE FILES "C:/Users/amigo/source/repos/LMMS/lmms/cmake/RelWithDebInfo/lmms.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/opt/mingw32/bin/Qt5Core.dll"
    "/opt/mingw32/bin/Qt5Gui.dll"
    "/opt/mingw32/bin/Qt5Widgets.dll"
    "/opt/mingw32/bin/Qt5Xml.dll"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./platforms" TYPE FILE FILES "/opt/mingw32/lib/qt5/plugins/platforms/qwindows.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/opt/mingw32/bin/libsamplerate-0.dll"
    "/opt/mingw32/bin/libsndfile-1.dll"
    "/opt/mingw32/bin/libvorbis-0.dll"
    "/opt/mingw32/bin/libvorbisenc-2.dll"
    "/opt/mingw32/bin/libvorbisfile-3.dll"
    "/opt/mingw32/bin/libjpeg-9.dll"
    "/opt/mingw32/bin/libogg-0.dll"
    "/opt/mingw32/bin/libmp3lame-0.dll"
    "/opt/mingw32/bin/libfftw3f-3.dll"
    "/opt/mingw32/bin/libFLAC-8.dll"
    "/opt/mingw32/bin/libpng16-16.dll"
    "/opt/mingw32/bin/SDL.dll"
    "/opt/mingw32/bin/libglib-2.0-0.dll"
    "/opt/mingw32/bin/libgthread-2.0-0.dll"
    "/opt/mingw32/bin/zlib1.dll"
    "/opt/mingw32/i686-w64-mingw32/bin/libwinpthread-1.dll"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/opt/mingw32/bin/libfluidsynth.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/opt/mingw32/bin/libgig-6.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/opt/mingw32/bin/libportaudio-2.dll")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/amigo/source/repos/LMMS/lmms/cmake/src/3rdparty/cmake_install.cmake")
  include("C:/Users/amigo/source/repos/LMMS/lmms/cmake/src/core/cmake_install.cmake")
  include("C:/Users/amigo/source/repos/LMMS/lmms/cmake/src/gui/cmake_install.cmake")
  include("C:/Users/amigo/source/repos/LMMS/lmms/cmake/src/tracks/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/amigo/source/repos/LMMS/lmms/cmake/src/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
