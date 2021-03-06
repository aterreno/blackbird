#
# Try to find jansson's libraries, and include path.
# Once done this will define:
#
# JANSSON_FOUND = jansson found.
# JANSSON_INCLUDE_PATHS = jansson include directories.
# JANSSON_LIBRARIES = libraries that are needed to use jansson.
#

SET(LIBRARY_PATHS
        /usr/lib)

FIND_PATH(JANSSON_INCLUDE_PATH jansson.h
        /usr/local/include)

FIND_LIBRARY(JANSSON_LIBRARY
        NAMES jansson
        PATHS ${LIBRARY_PATHS})

IF (JANSSON_INCLUDE_PATH AND JANSSON_LIBRARY)
    SET(JANSSON_FOUND TRUE)
    SET(JANSSON_INCLUDE_PATHS ${JANSSON_INCLUDE_PATH} CACHE STRING "The include paths needed to use jansson")
    SET(JANSSON_LIBRARIES ${JANSSON_LIBRARY} CACHE STRING "The libraries needed to use jansson")
ENDIF (JANSSON_INCLUDE_PATH AND JANSSON_LIBRARY)

IF(JANSSON_FOUND)
    IF(NOT JANSSON_FIND_QUIETLY)
        MESSAGE(STATUS "Found jansson: ${JANSSON_LIBRARY}")
    ENDIF(NOT JANSSON_FIND_QUIETLY)
ELSE(JANSSON_FOUND)
    IF(JANSSON_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find jansson library")
    ENDIF(JANSSON_FIND_REQUIRED)
ENDIF(JANSSON_FOUND)

MARK_AS_ADVANCED(
        JANSSON_INCLUDE_PATHS
        JANSSON_LIBRARIES)