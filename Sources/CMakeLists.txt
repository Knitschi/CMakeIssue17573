# Root CMakeLists file for the "CppCodeBase"
cmake_minimum_required (VERSION 3.8.0) 

include("cmake/Hunter/HunterGate.cmake") 

HunterGate(
	URL "https://github.com/ruslo/hunter/archive/v0.19.143.tar.gz"
	SHA1 "a4ae4c9a11ea67ac70ae047afffa5003ebe8e9b1"
	LOCAL
)

##################################### CREATE PROJECT ########################################
project(MyProject)

hunter_add_package(Qt)
find_package(Qt5 5.5.1 CONFIG REQUIRED Core )

add_library( mylib foo.cpp )

set_property( TARGET mylib PROPERTY AUTOMOC ON)

set( output "${CMAKE_CURRENT_BINARY_DIR}/bla.dll")
get_property(bla SOURCE ${output} PROPERTY GENERATED)
