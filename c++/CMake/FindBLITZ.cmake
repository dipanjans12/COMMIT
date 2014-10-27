FIND_PATH( BLITZ_INCLUDE_DIR
	blitz.h
	/usr/local/include/blitz /usr/include/blitz
)

FIND_LIBRARY( BLITZ_LIBRARIES
	NAMES libblitz${CMAKE_STATIC_LIBRARY_SUFFIX} libblitz${CMAKE_SHARED_LIBRARY_SUFFIX}
)

IF ( BLITZ_INCLUDE_DIR AND BLITZ_LIBRARIES )
   SET(BLITZ_FOUND TRUE)
ENDIF ( BLITZ_INCLUDE_DIR AND BLITZ_LIBRARIES )

IF (BLITZ_FOUND)
   IF (NOT BLITZ_FIND_QUIETLY)
      MESSAGE(STATUS "Found BLITZ: ${BLITZ_LIBRARIES}")
   ENDIF (NOT BLITZ_FIND_QUIETLY)
ELSE (BLITZ_FOUND)
   IF (BLITZ_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find BLITZ (which is required)")
   ENDIF (BLITZ_FIND_REQUIRED)
ENDIF (BLITZ_FOUND)
