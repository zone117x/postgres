cmake_minimum_required(VERSION 3.10)
project(jsonpath_parse)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Os -fdata-sections -ffunction-sections")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-dead_strip")

set(SOURCE_FILES ./jsonpath-lib/main.c ./jsonpath-lib/cJSON.c ./jsonpath-lib/jsonpath_gram.c ./jsonpath-lib/jsonpath_scan.c)

add_executable(jsonpath_parse ${SOURCE_FILES})
#target_include_directories(jsonpath_parse PRIVATE ./src/include)
target_include_directories(jsonpath_parse PRIVATE ./jsonpath-lib)

#find_library(POSTGRES_LIBRARY postgres HINTS ./src/backend)
#find_library(PGCOMMON_SHLIB_LIBRARY pgcommon_shlib HINTS ./src/common)
#find_library(PGPORT_SHLIB_LIBRARY pgport_shlib HINTS ./src/port)
#find_library(Z_LIBRARY z)

target_link_libraries(jsonpath_parse PRIVATE
    ${POSTGRES_LIBRARY}
    ${PGCOMMON_SHLIB_LIBRARY}
    ${PGPORT_SHLIB_LIBRARY}
    ${Z_LIBRARY}
)
