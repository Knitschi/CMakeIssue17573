# This file defines the versions of the libraries and tools that are obtained using the hunter package manager

include(hunter_config)
include(hunter_user_error)

hunter_config(GTest VERSION 1.8.0-hunter-p9)
#hunter_config(ClangToolsExtra VERSION ${HUNTER_Clang_VERSION})

# Because of problems with the Qt package on Linux, we only use it for Windows builds.
# -> Fix the package.
if(MSVC)

    hunter_config(
        Qt 
        VERSION 5.5.1-cvpixelbuffer-2-p7
        CMAKE_ARGS BUILD_SHARED_LIBS=ON
    )

elseif( CMAKE_COMPILER_IS_GNUCC OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")

endif()
