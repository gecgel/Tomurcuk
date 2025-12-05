function(Tomurcuk_SetupCompilationFeatures TARGET_NAME)
    if(NOT TARGET_NAME)
        message(FATAL_ERROR "Tomurcuk_SetupCompilationFeatures: provide a target name")
    endif()
    if(NOT TARGET ${TARGET_NAME})
        message(FATAL_ERROR "Tomurcuk_SetupCompilationFeatures: ${TARGET_NAME} is not the name of a target")
    endif()

    set_target_properties(${TARGET_NAME} PROPERTIES
        CXX_EXCEPTIONS OFF
        CXX_EXTENSIONS OFF
        CXX_SCAN_FOR_MODULES OFF
        CXX_STANDARD 23
        CXX_STANDARD_REQUIRED ON
    )

    if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang" AND CMAKE_CXX_COMPILER_FRONTEND_VARIANT STREQUAL "GNU")
        # cSpell: disable
        target_compile_options(${TARGET_NAME} PRIVATE
            "-Weverything"
            "-Wno-c++98-compat"
            "-Wno-unsafe-buffer-usage-in-libc-call"
        )
        # cSpell: enable
    endif()
endfunction()
