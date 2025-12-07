cmake_minimum_required(VERSION 4.0)
project(Tomurcuk)

include(FetchContent)

include("${CMAKE_SOURCE_DIR}/cmake/PlatformSettings.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/CompilerSettings.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/FileUtilities.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/ExternalTargets.cmake")

add_library(
    Tomurcuk
    "${CMAKE_SOURCE_DIR}/includes/tomurcuk/debugMessage.hpp"
    "${CMAKE_SOURCE_DIR}/sources/tomurcuk/debugMessage.cpp"
)
target_include_directories(Tomurcuk PUBLIC "${CMAKE_SOURCE_DIR}/includes")
Tomurcuk_SetupCompilationFeatures(Tomurcuk)

add_executable(
    Tomurcuk_Tests
    EXCLUDE_FROM_ALL
    "${CMAKE_SOURCE_DIR}/sources/tests/main.cpp"
)
target_link_libraries(Tomurcuk_Tests PRIVATE Tomurcuk)
Tomurcuk_SetupCompilationFeatures(Tomurcuk_Tests)
