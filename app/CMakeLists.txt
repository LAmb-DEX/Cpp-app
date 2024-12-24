cmake_minimum_required(VERSION 3.10)
project(SimpleCppApp)

set(CMAKE_CXX_STANDARD 17)

# Fetch Crow library
include(FetchContent)
FetchContent_Declare(
    crow
    GIT_REPOSITORY https://github.com/CrowCpp/Crow.git
    GIT_TAG v0.3
)
FetchContent_MakeAvailable(crow)

# Create the executable
add_executable(SimpleCppApp main.cpp)
target_link_libraries(SimpleCppApp PRIVATE Crow::Crow)
