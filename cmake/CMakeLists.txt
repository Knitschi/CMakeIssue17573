# This file bundles the cmake code file into a custom target to make them visible in the vs solution.

include(ccbLocations)

set( HUNTER_FILES 
    Hunter/HunterGate.cmake
    Hunter/config.cmake
)

source_group( Hunter FILES ${HUNTER_FILES} )

set(allCMakeFiles ${HUNTER_FILES})

set(targetName cmake)
add_custom_target( ${targetName} SOURCES ${allCMakeFiles} )
set_property( TARGET ${targetName} PROPERTY FOLDER ${targetName} )
