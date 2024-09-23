
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <iostream>
#include <iomanip>

int main()
{
    int deviceCount = 0;
    cudaGetDeviceCount(&deviceCount);

    if (deviceCount == 0) {
        std::cerr << "Aucun GPU détecté." << std::endl;
        return -1;
    }

    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);

    for (int device = 0; device < deviceCount; device++) {
    
        std::cout << "name " << prop.name << std::endl;
    
        std::cout << "uuid ";
        for (int i = 0; i < 16; i++) {
            std::cout << std::hex << std::setw(2) << std::setfill('0')
                << static_cast<unsigned int>(static_cast<unsigned char>(prop.uuid.bytes[i]));
        }
        std::cout << std::dec << std::endl;

        std::cout << "luid " << prop.luid << std::endl;
        std::cout << "luidDeviceNodeMask " << prop.luidDeviceNodeMask << std::endl;
        std::cout << "totalGlobalMem " << prop.totalGlobalMem << std::endl;
        std::cout << "sharedMemPerBlock " << prop.sharedMemPerBlock << std::endl;
        std::cout << "regsPerBlock " << prop.regsPerBlock << std::endl;
        std::cout << "warpSize " << prop.warpSize << std::endl;
        std::cout << "memPitch " << prop.memPitch << std::endl;
        std::cout << "maxThreadsPerBlock " << prop.maxThreadsPerBlock << std::endl;

        std::cout << "maxThreadsDimX " << prop.maxThreadsDim[0] << std::endl;
        std::cout << "maxThreadsDimY " << prop.maxThreadsDim[1] << std::endl;
        std::cout << "maxThreadsDimZ " << prop.maxThreadsDim[2] << std::endl;

        std::cout << "maxGridSizeX " << prop.maxGridSize[0] << std::endl;
        std::cout << "maxGridSizeY " << prop.maxGridSize[1] << std::endl;
        std::cout << "maxGridSizeZ " << prop.maxGridSize[2] << std::endl;

        std::cout << "clockRate " << prop.clockRate << std::endl;
        std::cout << "totalConstMem " << prop.totalConstMem << std::endl;
        std::cout << "major " << prop.major << std::endl;
        std::cout << "minor " << prop.minor << std::endl;
        std::cout << "textureAlignment " << prop.textureAlignment << std::endl;
        std::cout << "texturePitchAlignment " << prop.texturePitchAlignment << std::endl;
        std::cout << "deviceOverlap " << prop.deviceOverlap << std::endl;
        std::cout << "multiProcessorCount " << prop.multiProcessorCount << std::endl;
        std::cout << "kernelExecTimeoutEnabled " << prop.kernelExecTimeoutEnabled << std::endl;
        std::cout << "integrated " << prop.integrated << std::endl;
        std::cout << "canMapHostMemory " << prop.canMapHostMemory << std::endl;
        std::cout << "computeMode " << prop.computeMode << std::endl;
        std::cout << "maxTexture1D " << prop.maxTexture1D << std::endl;
        std::cout << "maxTexture1DMipmap " << prop.maxTexture1DMipmap << std::endl;
        std::cout << "maxTexture1DLinear " << prop.maxTexture1DLinear << std::endl;
    
        std::cout << "maxTexture2D.W " << prop.maxTexture2D[0] << std::endl;
        std::cout << "maxTexture2D.H " << prop.maxTexture2D[1] << std::endl;
    
        std::cout << "maxTexture2DMipmap.W " << prop.maxTexture2DMipmap[0] << std::endl;
        std::cout << "maxTexture2DMipmap.H " << prop.maxTexture2DMipmap[1] << std::endl;
    
        std::cout << "maxTexture2DLinear.W " << prop.maxTexture2DLinear[0] << std::endl;
        std::cout << "maxTexture2DLinear.H " << prop.maxTexture2DLinear[1] << std::endl;
        std::cout << "maxTexture2DLinear.L " << prop.maxTexture2DLinear[2] << std::endl;

        std::cout << "maxTexture2DGather.W " << prop.maxTexture2DGather[0] << std::endl;
        std::cout << "maxTexture2DGather.H " << prop.maxTexture2DGather[1] << std::endl;

        std::cout << "maxTexture3D.W " << prop.maxTexture3D[0] << std::endl;
        std::cout << "maxTexture3D.H " << prop.maxTexture3D[1] << std::endl;
        std::cout << "maxTexture3D.L " << prop.maxTexture3D[2] << std::endl;

        std::cout << "maxTexture3DAlt.W " << prop.maxTexture3DAlt[0] << std::endl;
        std::cout << "maxTexture3DAlt.H " << prop.maxTexture3DAlt[1] << std::endl;
        std::cout << "maxTexture3DAlt.L " << prop.maxTexture3DAlt[2] << std::endl;

        std::cout << "maxTextureCubemap " << prop.maxTextureCubemap << std::endl;

        std::cout << "maxTexture1DLayered.W " << prop.maxTexture1DLayered[0] << std::endl;
        std::cout << "maxTexture1DLayered.H " << prop.maxTexture1DLayered[1] << std::endl;

        std::cout << "maxTexture2DLayered.W " << prop.maxTexture2DLayered[0] << std::endl;
        std::cout << "maxTexture2DLayered.H " << prop.maxTexture2DLayered[1] << std::endl;
        std::cout << "maxTexture2DLayered.L " << prop.maxTexture2DLayered[2] << std::endl;

        std::cout << "maxTextureCubemapLayered.W " << prop.maxTextureCubemapLayered[0] << std::endl;
        std::cout << "maxTextureCubemapLayered.H " << prop.maxTextureCubemapLayered[1] << std::endl;
    
        std::cout << "maxSurface1D " << prop.maxSurface1D << std::endl;
    
        std::cout << "maxSurface2D.W " << prop.maxSurface2D[0] << std::endl;
        std::cout << "maxSurface2D.H " << prop.maxSurface2D[1] << std::endl;
    
        std::cout << "maxSurface3D.W " << prop.maxSurface3D[0] << std::endl;
        std::cout << "maxSurface3D.H " << prop.maxSurface3D[1] << std::endl;
        std::cout << "maxSurface3D.L " << prop.maxSurface3D[2] << std::endl;
    
        std::cout << "maxSurface1DLayered.W " << prop.maxSurface1DLayered[0] << std::endl;
        std::cout << "maxSurface1DLayered.H " << prop.maxSurface1DLayered[1] << std::endl;
    
        std::cout << "maxSurface2DLayered.W " << prop.maxSurface2DLayered[0] << std::endl;
        std::cout << "maxSurface2DLayered.H " << prop.maxSurface2DLayered[1] << std::endl;
        std::cout << "maxSurface2DLayered.L " << prop.maxSurface2DLayered[2] << std::endl;
    
        std::cout << "maxSurfaceCubemap " << prop.maxSurfaceCubemap << std::endl;

        std::cout << "maxSurfaceCubemapLayered.W " << prop.maxSurfaceCubemapLayered[0] << std::endl;
        std::cout << "maxSurfaceCubemapLayered.H " << prop.maxSurfaceCubemapLayered[1] << std::endl;
    
        std::cout << "surfaceAlignment " << prop.surfaceAlignment << std::endl;
        std::cout << "concurrentKernels " << prop.concurrentKernels << std::endl;
        std::cout << "ECCEnabled " << prop.ECCEnabled << std::endl;
        std::cout << "pciBusID " << prop.pciBusID << std::endl;
        std::cout << "pciDeviceID " << prop.pciDeviceID << std::endl;
        std::cout << "pciDomainID " << prop.pciDomainID << std::endl;
        std::cout << "tccDriver " << prop.tccDriver << std::endl;
        std::cout << "asyncEngineCount " << prop.asyncEngineCount << std::endl;
        std::cout << "unifiedAddressing " << prop.unifiedAddressing << std::endl;
        std::cout << "memoryClockRate " << prop.memoryClockRate << std::endl;
        std::cout << "memoryBusWidth " << prop.memoryBusWidth << std::endl;
        std::cout << "l2CacheSize " << prop.l2CacheSize << std::endl;
        std::cout << "persistingL2CacheMaxSize " << prop.persistingL2CacheMaxSize << std::endl;
        std::cout << "maxThreadsPerMultiProcessor " << prop.maxThreadsPerMultiProcessor << std::endl;
        std::cout << "streamPrioritiesSupported " << prop.streamPrioritiesSupported << std::endl;
        std::cout << "globalL1CacheSupported " << prop.globalL1CacheSupported << std::endl;
        std::cout << "localL1CacheSupported " << prop.localL1CacheSupported << std::endl;
        std::cout << "sharedMemPerMultiprocessor " << prop.sharedMemPerMultiprocessor << std::endl;
        std::cout << "regsPerMultiprocessor " << prop.regsPerMultiprocessor << std::endl;
        std::cout << "managedMemory " << prop.managedMemory << std::endl;
        std::cout << "isMultiGpuBoard " << prop.isMultiGpuBoard << std::endl;
        std::cout << "multiGpuBoardGroupID " << prop.multiGpuBoardGroupID << std::endl;
        std::cout << "hostNativeAtomicSupported " << prop.hostNativeAtomicSupported << std::endl;
        std::cout << "singleToDoublePrecisionPerfRatio " << prop.singleToDoublePrecisionPerfRatio << std::endl;
        std::cout << "pageableMemoryAccess " << prop.pageableMemoryAccess << std::endl;
        std::cout << "concurrentManagedAccess " << prop.concurrentManagedAccess << std::endl;
        std::cout << "computePreemptionSupported " << prop.computePreemptionSupported << std::endl;
        std::cout << "canUseHostPointerForRegisteredMem " << prop.canUseHostPointerForRegisteredMem << std::endl;
        std::cout << "cooperativeLaunch " << prop.cooperativeLaunch << std::endl;
        std::cout << "cooperativeMultiDeviceLaunch " << prop.cooperativeMultiDeviceLaunch << std::endl;
        std::cout << "sharedMemPerBlockOptin " << prop.sharedMemPerBlockOptin << std::endl;
        std::cout << "pageableMemoryAccessUsesHostPageTa " << prop.pageableMemoryAccessUsesHostPageTables << std::endl;
        std::cout << "directManagedMemAccessFromHost " << prop.directManagedMemAccessFromHost << std::endl;
        std::cout << "maxBlocksPerMultiProcessor " << prop.maxBlocksPerMultiProcessor << std::endl;
        std::cout << "accessPolicyMaxWindowSize " << prop.accessPolicyMaxWindowSize << std::endl;
        std::cout << "reservedSharedMemPerBlock " << prop.reservedSharedMemPerBlock << std::endl;
        std::cout << "hostRegisterSupported " << prop.hostRegisterSupported << std::endl;
        std::cout << "sparseCudaArraySupported " << prop.sparseCudaArraySupported << std::endl;
        std::cout << "hostRegisterReadOnlySupported " << prop.hostRegisterReadOnlySupported << std::endl;
        std::cout << "timelineSemaphoreInteropSupported " << prop.timelineSemaphoreInteropSupported << std::endl;
        std::cout << "memoryPoolsSupported " << prop.memoryPoolsSupported << std::endl;
        std::cout << "gpuDirectRDMASupported " << prop.gpuDirectRDMASupported << std::endl;
        std::cout << "gpuDirectRDMAFlushWritesOptions " << prop.gpuDirectRDMAFlushWritesOptions << std::endl;
        std::cout << "gpuDirectRDMAWritesOrdering " << prop.gpuDirectRDMAWritesOrdering << std::endl;
        std::cout << "memoryPoolSupportedHandleTypes " << prop.memoryPoolSupportedHandleTypes << std::endl;
        std::cout << "deferredMappingCudaArraySupported " << prop.deferredMappingCudaArraySupported << std::endl;
        std::cout << "ipcEventSupported " << prop.ipcEventSupported << std::endl;
        std::cout << "clusterLaunch " << prop.clusterLaunch << std::endl;
        std::cout << "unifiedFunctionPointers " << prop.unifiedFunctionPointers << std::endl;

        std::cout << "reserved2.W " << prop.reserved2[0] << std::endl;
        std::cout << "reserved2.H " << prop.reserved2[1] << std::endl;

        std::cout << "reserved1 " << prop.reserved1[1] << std::endl;

        std::cout << "reserved.0 " << prop.reserved[0] << std::endl;
        std::cout << "reserved.1 " << prop.reserved[1] << std::endl;
        std::cout << "reserved.2 " << prop.reserved[2] << std::endl;
        std::cout << "reserved.3 " << prop.reserved[3] << std::endl;
        std::cout << "reserved.4 " << prop.reserved[4] << std::endl;
        std::cout << "reserved.5 " << prop.reserved[5] << std::endl;
        std::cout << "reserved.6 " << prop.reserved[6] << std::endl;
        std::cout << "reserved.7 " << prop.reserved[7] << std::endl;
        std::cout << "reserved.8 " << prop.reserved[8] << std::endl;
        std::cout << "reserved.9 " << prop.reserved[9] << std::endl;
        std::cout << "reserved.10 " << prop.reserved[10] << std::endl;
        std::cout << "reserved.11 " << prop.reserved[11] << std::endl;
        std::cout << "reserved.12 " << prop.reserved[12] << std::endl;
        std::cout << "reserved.13 " << prop.reserved[13] << std::endl;
        std::cout << "reserved.14 " << prop.reserved[14] << std::endl;
        std::cout << "reserved.15 " << prop.reserved[15] << std::endl;
        std::cout << "reserved.16 " << prop.reserved[16] << std::endl;
        std::cout << "reserved.17 " << prop.reserved[17] << std::endl;
        std::cout << "reserved.18 " << prop.reserved[18] << std::endl;
        std::cout << "reserved.19 " << prop.reserved[19] << std::endl;
        std::cout << "reserved.20 " << prop.reserved[20] << std::endl;
        std::cout << "reserved.21 " << prop.reserved[21] << std::endl;
        std::cout << "reserved.22 " << prop.reserved[22] << std::endl;
        std::cout << "reserved.23 " << prop.reserved[23] << std::endl;
        std::cout << "reserved.24 " << prop.reserved[24] << std::endl;
        std::cout << "reserved.25 " << prop.reserved[25] << std::endl;
        std::cout << "reserved.26 " << prop.reserved[26] << std::endl;
        std::cout << "reserved.27 " << prop.reserved[27] << std::endl;
        std::cout << "reserved.28 " << prop.reserved[28] << std::endl;
        std::cout << "reserved.29 " << prop.reserved[29] << std::endl;
        std::cout << "reserved.30 " << prop.reserved[30] << std::endl;
        std::cout << "reserved.31 " << prop.reserved[31] << std::endl;
        std::cout << "reserved.32 " << prop.reserved[32] << std::endl;
        std::cout << "reserved.33 " << prop.reserved[33] << std::endl;
        std::cout << "reserved.34 " << prop.reserved[34] << std::endl;
        std::cout << "reserved.35 " << prop.reserved[35] << std::endl;
        std::cout << "reserved.36 " << prop.reserved[36] << std::endl;
        std::cout << "reserved.37 " << prop.reserved[37] << std::endl;
        std::cout << "reserved.38 " << prop.reserved[38] << std::endl;
        std::cout << "reserved.39 " << prop.reserved[39] << std::endl;
        std::cout << "reserved.40 " << prop.reserved[40] << std::endl;
        std::cout << "reserved.41 " << prop.reserved[41] << std::endl;
        std::cout << "reserved.42 " << prop.reserved[42] << std::endl;
        std::cout << "reserved.43 " << prop.reserved[43] << std::endl;
        std::cout << "reserved.44 " << prop.reserved[44] << std::endl;
        std::cout << "reserved.45 " << prop.reserved[45] << std::endl;
        std::cout << "reserved.46 " << prop.reserved[46] << std::endl;
        std::cout << "reserved.47 " << prop.reserved[47] << std::endl;
        std::cout << "reserved.48 " << prop.reserved[48] << std::endl;
        std::cout << "reserved.49 " << prop.reserved[49] << std::endl;
        std::cout << "reserved.50 " << prop.reserved[50] << std::endl;
        std::cout << "reserved.51 " << prop.reserved[51] << std::endl;
        std::cout << "reserved.52 " << prop.reserved[52] << std::endl;
        std::cout << "reserved.53 " << prop.reserved[53] << std::endl;
        std::cout << "reserved.54 " << prop.reserved[54] << std::endl;
        std::cout << "reserved.55 " << prop.reserved[55] << std::endl;
        std::cout << "reserved.56 " << prop.reserved[56] << std::endl;
        std::cout << "reserved.57 " << prop.reserved[57] << std::endl;
        std::cout << "reserved.58 " << prop.reserved[58] << std::endl;
        std::cout << "reserved.59 " << prop.reserved[59] << std::endl;
    }
    return 0;
}
