# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_INNOSETUP "OFF")
set(CPACK_BINARY_NSIS "ON")
set(CPACK_BINARY_NUGET "OFF")
set(CPACK_BINARY_WIX "OFF")
set(CPACK_BINARY_ZIP "OFF")
set(CPACK_BUILD_SOURCE_DIRS "C:/Users/amigo/source/repos/LMMS/lmms;C:/Users/amigo/source/repos/LMMS/lmms/cmake")
set(CPACK_CMAKE_GENERATOR "Visual Studio 17 2022")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "lmms built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "TBZ2")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INNOSETUP_ARCHITECTURE "x64")
set(CPACK_INSTALLED_DIRECTORIES "C:/Users/amigo/source/repos/LMMS/lmms;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/opt/mingw32")
set(CPACK_MODULE_PATH "C:/Users/amigo/source/repos/LMMS/lmms/cmake/modules;C:/Users/amigo/source/repos/LMMS/lmms/cmake/../cmake/modules/")
set(CPACK_NSIS_CONTACT "lmms-devel@lists.sourceforge.net")
set(CPACK_NSIS_DEFINES "
  !include C:/Users/amigo/source/repos/LMMS/lmms/cmake/nsis/FileAssociation.nsh
  !include LogicLib.nsh
  !include WinVer.nsh")
set(CPACK_NSIS_DISPLAY_NAME "LMMS 1.2.2.4")
set(CPACK_NSIS_DISPLAY_NAME_SET "TRUE")
set(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "
  \${registerExtension} \"$INSTDIR\\lmms.exe\" \".mmp\" \"LMMS Project\"
  \${registerExtension} \"$INSTDIR\\lmms.exe\" \".mmpz\" \"LMMS Project (compressed)\"
  \${IfNot} \${AtMostWin7}
    WriteRegDWORD HKLM \"Software\\Microsoft\\Windows\\CurrentVersion\\SideBySide\" \"PreferExternalManifest\" \"1\"
  \${EndIf}
  ")
set(CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS "
  \${unregisterExtension} \".mmp\" \"LMMS Project\"
  \${unregisterExtension} \".mmpz\" \"LMMS Project (compressed)\"
  DeleteRegKey HKCR \"LMMS Project\"
  DeleteRegKey HKCR \"LMMS Project (compressed)\"
  ")
set(CPACK_NSIS_HELP_LINK "https://lmms.io")
set(CPACK_NSIS_INSTALLED_ICON_NAME "lmms.exe")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_MENU_LINKS "lmms.exe;LMMS")
set(CPACK_NSIS_MUI_ICON "C:/Users/amigo/source/repos/LMMS/lmms/cmake/nsis/icon.ico")
set(CPACK_NSIS_PACKAGE_NAME "LMMS 1.2.2.4")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_NSIS_URL_INFO_ABOUT "https://lmms.io")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Users/amigo/source/repos/LMMS/lmms/cmake/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Users/amigo/source/repos/LMMS/lmms/README.md")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "LMMS - Free music production software")
set(CPACK_PACKAGE_EXECUTABLES "lmms.exe;LMMS")
set(CPACK_PACKAGE_FILE_NAME "lmms-1.2.2.4")
set(CPACK_PACKAGE_ICON "C:/Users/amigo/source/repos/LMMS/lmms/cmake/nsis/nsis_branding.bmp")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "LMMS")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "LMMS")
set(CPACK_PACKAGE_NAME "lmms")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "LMMS Developers")
set(CPACK_PACKAGE_VERSION "1.2.2.4")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "2")
set(CPACK_PACKAGE_VERSION_PATCH "2.4")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Users/amigo/source/repos/LMMS/lmms/LICENSE.txt")
set(CPACK_RESOURCE_FILE_README "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.31/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/Users/amigo/source/repos/LMMS/lmms;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/amigo/source/repos/LMMS/lmms/cmake/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "lmms-1.2.2.4")
set(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/amigo/source/repos/LMMS/lmms/cmake/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
