cmake_minimum_required(VERSION 4.0)
project(Tomurcuk)

include(FetchContent)

include("${CMAKE_SOURCE_DIR}/cmake/PlatformSettings.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/CompilerSettings.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/FileUtilities.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/CodeDivisions.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/ExternalTargets.cmake")

Tomurcuk_DefinePackage(
    Tomurcuk_TomurcukFundamentalsBasics
    "${CMAKE_SOURCE_DIR}/sources/tomurcuk/fundamentals/basics"
)

Tomurcuk_DefinePackage(
    Tomurcuk_TomurcukFundamentalsTests
    "${CMAKE_SOURCE_DIR}/sources/tomurcuk/fundamentals/tests"
    PRIVATE_DEPENDENCIES
        Tomurcuk_TomurcukFundamentalsBasics
)

Tomurcuk_DefinePackage(
    Tomurcuk_TomurcukFundamentals
    "${CMAKE_SOURCE_DIR}/sources/tomurcuk/fundamentals"
    PUBLIC_DEPENDENCIES
        Tomurcuk_TomurcukFundamentalsBasics
)
