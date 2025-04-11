cmake_minimum_required(VERSION 3.21)
project(teste C)

set(CMAKE_C_STANDARD 23)

include(FetchContent)

FetchContent_Declare(
        libprg
#        GIT_REPOSITORY https://github.com/emersonmello/libprg.git
#        GIT_TAG origin/main
        # or GIT_TAG 0.0.1

        # You can reference a local directory instead
        URL file:///${CMAKE_CURRENT_SOURCE_DIR}/../libprg-thuany03
)
FetchContent_MakeAvailable(libprg)

add_executable(teste main.c)

# linking libprg
target_link_libraries(teste PUBLIC libprg)