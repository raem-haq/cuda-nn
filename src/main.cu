#include <iostream>
__global__ void hello_from_gpu() {
    printf("Hello from the GPU!\\n");
}

int main() {
    std::cout << "Hello from the CPU!" << std::endl;
    hello_from_gpu<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}
