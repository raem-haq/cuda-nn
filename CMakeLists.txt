cmake_minimum_required(VERSION 3.18)
project(CUDA_NN LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)

# Enable CUDA separation (so each .cu compiles cleanly)
set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)

add_executable(cuda_nn
    src/main.cu
    src/layers.cu
    src/utils.cu
    src/nn_cpu.cpp
    src/nn_gpu.cu
)

target_include_directories(cuda_nn PRIVATE include)
