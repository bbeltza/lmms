# Install script for directory: C:/Users/amigo/source/repos/LMMS/lmms/data/locale

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/data/locale" TYPE FILE FILES
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/ar.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/bs.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/ca.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/cs.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/de.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/en.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/es.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/fa.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/fr.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/gl.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/hu_HU.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/id.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/it.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/ja.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/ko.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/nl.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/pl.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/pt.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/ru.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/sl.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/sr.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/sv.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/uk.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/zh_CN.qm"
    "C:/Users/amigo/source/repos/LMMS/lmms/data/locale/zh_TW.qm"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/amigo/source/repos/LMMS/lmms/cmake/data/locale/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
