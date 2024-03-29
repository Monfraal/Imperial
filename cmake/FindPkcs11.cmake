# - Try to find Pkcs11-helper
# Using Pkg-config if available for path
#
#  PKCS11_FOUND        - all required ffmpeg components found on system
#  PKCS11_INCLUDE_DIRS  - combined include directories
#  PKCS11_LIBRARIES    - combined libraries to link

include(FindPkgConfig)

if (PKG_CONFIG_FOUND)
	pkg_check_modules(PKCS11 libpkcs11-helper-1)
endif()

find_path(PKCS11_INCLUDE_DIR pkcs11-helper-1.0/pkcs11.h PATHS ${PKCS11_INCLUDE_DIRS})
find_library(PKCS11_LIBRARY pkcs11-helper PATHS ${PKCS11_LIBRARY_DIRS})

if (PKCS11_INCLUDE_DIR AND PKCS11_LIBRARY)
	set(PKCS11_FOUND TRUE)
endif()

set(Pkcs11_FOUND ${PKCS11_FOUND})
set(Pkcs11_INCLUDE_DIR ${PKCS11_INCLUDE_DIR})
set(Pkcs11_INCLUDE_DIRS ${PKCS11_INCLUDE_DIR})
set(Pkcs11_LIBRARY ${PKCS11_LIBRARY})

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Pkcs11 DEFAULT_MSG Pkcs11_FOUND)


