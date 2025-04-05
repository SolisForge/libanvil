@PACKAGE_INIT@

set(ANVIL_TARGETS "${CMAKE_CURRENT_LIST_DIR}/anvilTargets.cmake")
if (EXISTS ${ANVIL_TARGETS})
  include(${ANVIL_TARGETS})
endif()