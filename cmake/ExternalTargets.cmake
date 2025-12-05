FetchContent_Declare(
    Tomurcuk_GreatestGit
    GIT_REPOSITORY https://github.com/silentbicycle/greatest.git
    GIT_TAG 11a6af1919049df502405913da64fb385c219361
    GIT_SHALLOW on
    GIT_PROGRESS on
)
FetchContent_MakeAvailable(Tomurcuk_GreatestGit)

add_library(Tomurcuk_Greatest INTERFACE)
target_sources(Tomurcuk_Greatest INTERFACE "${Tomurcuk_GreatestGit_SOURCE_DIR}/greatest.h")
target_include_directories(Tomurcuk_Greatest INTERFACE "${Tomurcuk_GreatestGit_SOURCE_DIR}")
target_compile_definitions(Tomurcuk_Greatest INTERFACE "GREATEST_USE_ABBREVS=0")
