set (CWARN "-Wall -Wstrict-prototypes -Wextra -Werror")
set (CXXWARN "-Wall -Wextra -Werror")
set (CTUNING "-ggdb -pedantic -fomit-frame-pointer -ffunction-sections -fdata-sections")
set (CMCU "-mtune=cortex-m3 -MMD -MP -mcpu=cortex-m3 -mthumb -march=armv7-m -mlittle-endian -mfix-cortex-m3-ldrd -mno-thumb-interwork")
set (CMAKE_C_FLAGS "-std=gnu11 ${CWARN} ${CTUNING} ${CMCU} ${CCOVERAGE}")
set (CMAKE_CXX_FLAGS "-std=gnu++1y -fno-exceptions ${CXXWARN} ${CTUNING} ${CMCU} ${CCOVERAGE}")
set (CMAKE_CXX_STANDARD 14)

set(DEBUG_COMP_OPTIONS "-DDEBUG -O0 -g")
set(RELEASE_COMP_OPTIONS "-DNDEBUG -O2 ${LTO_SWITCH}")

set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${LTO_SWITCH}")

set(CMAKE_C_FLAGS_DEBUG ${DEBUG_COMP_OPTIONS})
set(CMAKE_CXX_FLAGS_DEBUG ${DEBUG_COMP_OPTIONS})
set(CMAKE_C_FLAGS_RELEASE ${RELEASE_COMP_OPTIONS})
set(CMAKE_CXX_FLAGS_RELEASE ${RELEASE_COMP_OPTIONS})

