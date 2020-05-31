/* Documentation for ChapelCL */
module ChapelCL {
  use SysCTypes;
  extern {
    #ifdef __APPLE__
    #include <OpenCL/cl.h>
    #else
    #include <CL/cl.h>
    #endif

  }

  const CL_SUCCESS : int = 0;
  const CL_DEVICE_NOT_FOUND : int = -1;
  const CL_DEVICE_NOT_AVAILABLE : int = -2;
  const CL_COMPILER_NOT_AVIALABLE : int = -3;
  const CL_MEM_OBJECT_ALLOCATION_FAILURE : int = -4;
  const CL_OUT_OF_RESOURCES : int = -5;
  const CL_OUT_OF_HOST_MEMORY : int = -6;
  const CL_PROFILING_INFO_NOT_AVAILABLE : int = -7;
  const CL_MEM_COPY_OVERLAP : int = -8;
  const CL_IMAGE_FORMAT_MISMATCH : int = -9;
  const CL_IMAGE_FORMAT_NOT_SUPPORTED : int = -10;
  const CL_BUILD_PROGRAM_FAILURE : int = 11;
  const CL_MAP_FAILURE : int = -12;
  const CL_MISALIGNED_SUB_BUFFER_OFFSET : int = -13;
  const CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST : int = -14;
  const CL_COMPILE_PROGRAM_FAILURE : int = -15;
  const CL_LINKER_NOT_AVAILABLE : int = -16;
  const CL_LINK_PROGRAM_FAILURE : int = -17;
  const CL_DEVICE_PARTITION_FAILED : int = -18;
  const CL_KERNEL_ARG_INFO_NOT_AVAILABLE : int = -19;
  
  const CL_INVALID_VALUE : int = -30;
  const CL_INVALID_DEVICE_TYPE : int = -31;
  const CL_INVALID_PLATFORM : int = -32;
  const CL_INVALID_DEVICE : int = -33;
  const CL_INVALID_CONTEXT : int = -34;
  const CL_INVALID_QUEUE_PROPERTIES : int = -35;
  const CL_INVALID_COMMAND_QUEUE : int = -36;
  const CL_INVALID_HOST_PTR : int = -37;
  const CL_INVALID_MEM_OBJECT : int = -38;
  const CL_INVALID_IMAGE_FORMAT_DESCRIPTION : int = -39;
  const CL_INVALID_IMAGE_SIZE : int = -40;
  const CL_INVALID_SAMPLER : int = -41;
  const CL_INVALID_BINARY : int = -42;
  const CL_INVALID_BUILD_OPTIONS : int = -43;
  const CL_INVALID_PROGRAM : int = -44;
  const CL_INVALID_PROGRAM_EXECUTABLE : int = -45;
  const CL_INVALID_KERNEL_NAME : int = -46;
  const CL_INVALID_IMAGE_DEFINITION : int = -47;
  const CL_INVALID_KERNEL : int = -48;
  const CL_INVALID_ARG_INDEX : int = -49;
  const CL_INVALID_ARG_VALUE : int = -50;
  const CL_INVALID_ARG_SIZE : int = -51;
  const CL_INVALID_KERNEL_ARGS : int = -52;
  const CL_INVALID_WORK_DIMENSION : int = -53;
  const CL_INVALID_WORK_GROUP_SIZE : int = -54;
  const CL_INVALID_WORK_ITEM_SIZE : int = -55;
  const CL_INVALID_GLOBAL_OFFSET : int = -56;
  const CL_INVALID_EVENT_WAIT_LIST : int = -57;
  const CL_INVALID_EVENT : int = -58;
  const CL_INVALID_OPERATION : int = -59;
  const CL_INVALID_GL_OBJECT : int = -60;
  const CL_INVALID_INVALID_BUFFER_SIZE : int = -61;
  const CL_INVALID_MIP_LEVEL : int = -62;
  const CL_INVALID_GLOBAL_WORK_SIZE : int = -63;
  const CL_INVALID_PROPERTY : int = -64;
  const CL_INVALID_IMAGE_DESCRIPTOR : int = -65;
  const CL_INVALID_COMPILER_OPTIONS : int = -66;
  const CL_INVALID_LINKER_OPTIONS : int = -67;
  const CL_INVALID_DEVICE_PARTITION_COUNT : int = -68;

  const CL_VERSION_1_0 : int = 1;
  const CL_VERSION_1_1 : int = 1;
  const CL_VERSION_1_2 : int = 1;

  const CL_FALSE : int = 0;
  const CL_TRUE : int = 1;
  const CL_BLOCKING : int = CL_TRUE;
  const CL_NON_BLOCKING : int = CL_FALSE;

  const CL_PLATFORM_PROFILE : int = 0x0900;
  const CL_PLATFORM_VERSION : int = 0x0901;
  const CL_PLATFORM_NAME : int = 0x0902;
  const CL_PLATFORM_VENDOR : int = 0x0903;
  const CL_PLATFORM_EXTENSIONS : int = 0x0904;
  
  const CL_DEVICE_TYPE_DEFAULT : int = 0b00001;
  const CL_DEVICE_TYPE_CPU : int = 0b00010;
  const CL_DEVICE_TYPE_GPU : int = 0b00100;
  const CL_DEVICE_TYPE_ACCELERATOR : int = 0b01000;
  const CL_DEVICE_TYPE_CUSTOM : int = 0b10000;
  const CL_DEVICE_TYPE_ALL : int = 0xFFFFFFFF;

  const CL_DEVICE_CL_DEVICE_TYPE : int = 0x1000;
  const CL_DEVICE_VENDOR_ID : int = 0x1001;
  const CL_DEVICE_MAX_COMPUTE_UNITS : int = 0x1002;
  const CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS : int = 0x1003;
  const CL_DEVICE_MAX_WORK_GROUP_SIZE : int = 0x1004;
  const CL_DEVICE_MAX_WORK_ITEM_SIZES : int = 0x1005;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR : int = 0x1006;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT : int = 0x1007;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT : int = 0x1008;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG : int = 0x1009;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT : int = 0x100A;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE : int = 0x100B;
  const CL_DEVICE_MAX_CLOCK_FREQUENCY : int = 0x100C;
  const CL_DEVICE_ADDRESS_BITS : int = 0x100D;
  const CL_DEVICE_MAX_READ_IMAGE_ARGS : int = 0x100E;
  const CL_DEVICE_MAX_WRITE_IMAGE_ARGS : int = 0x100F;
  const CL_DEVICE_MAX_MEM_ALLOC_SIZE : int = 0x1010;
  const CL_DEVICE_IMAGE2D_MAX_WIDTH : int = 0x1011;
  const CL_DEVICE_IMAGE2D_MAX_HEIGHT : int = 0x1012;
  const CL_DEVICE_IMAGE3D_MAX_WIDTH : int = 0x1013;
  const CL_DEVICE_IMAGE3D_MAX_HEIGHT : int = 0x1014;
  const CL_DEVICE_IMAGE3D_MAX_DEPTH : int = 0x1015;
  const CL_DEVICE_IMAGE_SUPPORT : int = 0x1016;
  const CL_DEVICE_MAX_PARAMTER_SIZE : int = 0x1017;
  const CL_DEVICE_MAX_SAMPLERS : int = 0x1018;
  const CL_DEVICE_MEM_BASE_ADDR_ALIGN : int = 0x1019;
  const CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE : int = 0x101A;
  const CL_DEVICE_SINGLE_FP_CONFIG : int = 0x101B;
  const CL_DEVICE_GLOBAL_MEM_CACHE_TYPE : int = 0x101C;
  const CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE : int = 0x101D;
  const CL_DEVICE_GLOBAL_MEM_CACHE_SIZE : int = 0x101E;
  const CL_DEVICE_GLOBAL_MEM_SIZE : int = 0x101F;
  const CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE : int = 0x1020;
  const CL_DEVICE_MAX_CONSTANT_ARGS : int = 0x1021;
  const CL_DEVICE_LOCAL_MEM_TYPE : int = 0x1022;
  const CL_DEVICE_LOCAL_MEM_SIZE : int = 0x1023;
  const CL_DEVICE_ERROR_CORRECTION_SUPPORT : int = 0x1024;
  const CL_DEVICE_PROFILING_TIMER_RESOLUTION : int = 0x1025;
  const CL_DEVICE_ENDIAN_LITTLE : int = 0x1026;
  const CL_DEVICE_AVAILABLE : int = 0x1027;
  const CL_DEVICE_COMPILER_AVAILABLE : int = 0x1028;
  const CL_DEVICE_EXECUTION_CAPABILITIES : int = 0x1029;
  const CL_DEVICE_QUEUE_PROPERTIES : int = 0x102A;
  const CL_DEVICE_NAME : int = 0x102B;
  const CL_DEVICE_VENDOR : int = 0x102C;
  const CL_DRIVER_VERSION : int = 0x102D;
  const CL_DEVICE_PROFILE : int = 0x102E;
  const CL_DEVICE_VERSION : int = 0x102F;
  const CL_DEVICE_EXTENSIONS : int = 0x1030;
  const CL_DEVICE_PLATFORM : int = 0x1031;
  const CL_DEVICE_DOUBLE_FP_CONFIG : int = 0x1032;
  const CL_DEVICE_HALF_FP_CONFIG : int = 0x1033;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF : int = 0x1034;
  const CL_DEVICE_HOST_UNIFIED_MEMORY : int = 0x1035;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR : int = 0x1036;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT : int = 0x1037;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_INT : int = 0x1038;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG : int = 0x1039;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT : int = 0x103A;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE : int = 0x103B;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF : int = 0x103C;
  const CL_DEVICE_OPENCL_C_VERSION : int = 0x103D;
  const CL_DEVICE_LINKER_AVAILABLE : int = 0x103E;
  const CL_DEVICE_BUILT_IN_KERNELS : int = 0x103F;
  const CL_DEVICE_IMAGE_MAX_BUFFER_SIZE : int = 0x1040;
  const CL_DEVICE_IMAGE_MAX_ARRAY_SIZE : int = 0x1041;
  const CL_DEVICE_PARENT_DEVICE : int = 0x1042;
  const CL_DEVICE_PARTITION_MAX_SUB_DEVICES : int = 0x1043;
  const CL_DEVICE_PARTITION_PROPERTIES : int = 0x1044;
  const CL_DEVICE_PARTITION_AFFINITY_DOMAIN : int = 0x1045;
  const CL_DEVICE_PARTITION_TYPE : int = 0x1046;
  const CL_DEVICE_REFERENCE_COUNT : int = 0x1047;
  const CL_DEVICE_PREFERRED_INTEROP_USER_SYNC : int = 0x1048;
  const CL_DEVICE_PRINTF_BUFFER_SIZE : int = 0x1049;

  const CL_FP_DENORM : int = 0b00000001;
  const CL_FP_INF_NAN : int = 0b00000010;
  const CL_FP_ROUND_TO_NEAREST : int = 0b00000100;
  const CL_FP_ROUND_TO_ZERO : int = 0b00001000;
  const CL_FP_ROUND_TO_INF : int = 0b00010000;
  const CL_FP_FMA : int = 0b00100000;
  const CL_FP_SOFT_FLOAT : int = 0b01000000;
  const CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT : int = 0b10000000;

  const CL_NONE : int = 0x1;
  const CL_READ_ONLY_CACHE : int = 0x2;
  const CL_READ_WRITE_CACHE : int = 0x3;

  const CL_LOCAL : int = 0x1;
  const CL_GLOBAL : int = 0x2;

  const CL_EXEC_KERNEL : int = 0b01;
  const CL_EXEC_NATIVE_KERNEL : int = 0b10;

  const CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE : int = 0b01;
  const CL_QUEUE_PROFILING_ENABLE : int = 0b10;

  const CL_CONTEXT_REFERENCE_COUNT : int = 0x1080;
  const CL_CONTEXT_DEVICES : int = 0x1081;
  const CL_CONTEXT_PROPERTIES: int = 0x1082;
  const CL_CONTEXT_NUM_DEVICES : int = 0x1083;

  const ref CL_CONTEXT_PLATFORM : int = 0x1084;
  const ref CL_CONTEXT_INTEROP_USER_SYNC : int = 0x1085;

  const CL_QUEUE_CONTEXT : int = 0x1090;
  const CL_QUEUE_DEVICE : int = 0x1091;
  const CL_QUEUE_REFERENCE_COUNT : int = 0x1092;
  const CL_QUEUE_PROPERTIES : int = 0x1093;

  const CL_MEM_READ_WRITE : int = 0b0000000001;
  const CL_MEM_WRITE_ONLY : int = 0b0000000010;
  const CL_MEM_READ_ONLY : int = 0b0000000100;
  const CL_MEM_USE_HOST_PTR : int = 0b0000001000;
  const CL_MEM_ALLOC_HOST_PTR : int = 0b0000010000;
  const CL_MEM_COPY_HOST_PTR : int = 0b0000100000;
  //  0b0001000000 is reserved
  const CL_MEM_HOST_WRITE_ONLY : int = 0b0010000000;
  const CL_MEM_HOST_READ_ONLY : int = 0b0100000000;
  const CL_MEM_HOST_NO_ACCESS : int = 0b1000000000;

  const CL_BUFFER_CREATE_TYPE_REGION : int = 0x1220;  

  const CL_R : int = 0x10B0;
  const CL_A : int = 0x10B1;
  const CL_RG : int = 0x10B2;
  const CL_RA : int = 0x10B3;
  const CL_RGB : int = 0x10B4;
  const CL_RGBA : int = 0x10B5;
  const CL_BGRA : int = 0x10B6;
  const CL_ARGB : int = 0x10B7;
  const CL_INTENSITY : int = 0x10B8;
  const CL_LUMINANCE : int = 0x10B9;
  const CL_Rx : int = 0x10BA;
  const CL_RGx : int = 0x10BB;
  const CL_RGBx : int = 0x10BC;
  const CL_DEPTH : int = 0x10BD;
  const CL_DEPTH_STENCIL : int = 0x10BE;

  const CL_SNORM_INT8 : int = 0x10D0;
  const CL_SNORM_INT16 : int = 0x10D1;
  const CL_UNORM_INT8 : int = 0x10D2;
  const CL_UNORM_INT16 : int = 0x10D3;
  const CL_UNORM_SHORT_565 : int = 0x10D4;
  const CL_UNORM_SHORT_555 : int = 0x10D5;
  const CL_UNORM_INT_101010 : int = 0x10D6;
  const CL_SIGNED_INT8 : int = 0x10D7;
  const CL_SIGNED_INT16 : int = 0x10D8;
  const CL_SIGNED_INT32 : int = 0x10D9;
  const CL_UNSIGNED_INT8 : int = 0x10DA;
  const CL_UNSIGNED_INT16 : int = 0x10DB;
  const CL_UNSIGNED_INT32 : int = 0x10DC;
  const CL_HALF_FLOAT : int = 0x10DD;
  const CL_FLOAT : int = 0x10DE;
  const CL_UNORM_INT24 : int = 0x10DF;

  const CL_MEM_OBJECT_BUFFER : int = 0x10F0;
  const CL_MEM_OBJECT_IMAGE2D : int = 0x10F1;
  const CL_MEM_OBJECT_IMAGE3D : int = 0x10F2;
  const CL_MEM_OBJECT_IMAGE2D_ARRAY : int = 0x10F3;
  const CL_MEM_OBJECT_IMAGE1D : int = 0x10F4;
  const CL_MEM_OBJECT_IMAGE1D_ARRAY : int = 0x10F5;
  const CL_MEM_OBJECT_IMAGE1D_BUFFER : int = 0x10F6;

  const CL_MEM_TYPE : int = 0x1100;
  const CL_MEM_FLAGS : int = 0x1101;
  const CL_MEM_SIZE : int = 0x1102;
  const CL_MEM_HOST_PTR : int = 0x1103;
  const CL_MEM_MAP_COUNT : int = 0x1104;
  const CL_MEM_REFERENCE_COUNT : int = 0x1105;
  const CL_MEM_CONTEXT : int = 0x1106;
  const CL_MEM_ASSOCIATED_MEMOBJECT : int = 0x1107;
  const CL_MEM_OFFSET : int = 0x1108;

  const CL_IMAGE_FORMAT : int = 0x1110;
  const CL_IMAGE_ELEMENT_SIZE : int = 0x1111;
  const CL_IMAGE_ROW_PITCH : int = 0x1112;
  const CL_IMAGE_SLICE_PITCH : int = 0x1113;
  const CL_IMAGE_WIDTH : int = 0x1114;
  const CL_IMAGE_HEIGHT : int = 0x1115;
  const CL_IMAGE_DEPTH : int = 0x1116;
  const CL_IMAGE_ARRAY_SIZE : int = 0x1117;
  const CL_IMAGE_BUFFER : int = 0x1118;
  const CL_IMAGE_NUM_MIP_LEVELS : int = 0x1119;
  const CL_IMAGE_NUM_SAMPLES : int = 0x111A;

  const CL_ADDRESS_NONE : int = 0x1130;
  const CL_ADDRESS_CLAMP_TO_EDGE : int = 0x1131;
  const CL_ADDRESS_CLAMP : int = 0x1132;
  const CL_ADDRESS_REPEAT : int = 0x1133;
  const CL_ADDRESS_MIRRORED_REPEAT : int = 0x1134;

  const CL_FILTER_NEAREST : int = 0x1140;
  const CL_FILTER_LINEAR : int = 0x1141;

  const CL_SAMPLER_REFERENCE_COUNT : int = 0x1150;
  const CL_SAMPLER_CONTEXT : int = 0x1151;
  const CL_SAMPLER_NORMALIZED_COORDS : int = 0x1152;
  const CL_SAMPLER_ADDRESSING_MODE : int = 0x1153;
  const CL_SAMPLER_FILTER_MODE : int = 0x1154;

  const CL_PROGRAM_REFERENCE_COUNT : int = 0x1160;
  const CL_PROGRAM_CONTEXT : int = 0x1161;
  const CL_PROGRAM_NUM_DEVICES : int = 0x1162;
  const CL_PROGRAM_DEVICES : int = 0x1163;
  const CL_PROGRAM_SOURCE : int = 0x1164;
  const CL_PROGRAM_BINARY_SIZES : int = 0x1165;
  const CL_PROGRAM_BINARIES : int = 0x1166;
  const CL_PROGRAM_NUM_KERNELS : int = 0x1167;
  const CL_PROGRAM_KERNEL_NAMES : int = 0x1168;

  const CL_PROGRAM_BUILD_STATUS : int = 0x1181;
  const CL_PROGRAM_BUILD_OPTIONS : int = 0x1182;
  const CL_PROGRAM_BUILD_LOG : int = 0x1183;
  const CL_PROGRAM_BINARY_TYPE : int = 0x1184;

  const CL_PROGRAM_BINARY_TYPE_NONE : int = 0x0;
  const CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT : int = 0x1;
  const CL_PROGRAM_BINARY_TYPE_LIBRARY : int = 0x2;
  const CL_PROGRAM_BINARY_TYPE_EXECUTABLE : int = 0x4;

  const CL_BUILD_SUCCESS : int = 0;
  const CL_BUILD_NONE : int = -1;
  const CL_BUILD_ERROR : int = -2;
  const CL_BUILD_IN_PROGRESS : int = -3;

  const CL_KERNEL_FUNCTION_NAME : int = 0x1190;
  const CL_KERNEL_NUM_ARGS : int = 0x1191;
  const CL_KERNEL_REFERENCE_COUNT : int = 0x1192;
  const CL_KERNEL_CONTEXT : int = 0x1193;
  const CL_KERNEL_PROGRAM : int = 0x1194;
  const CL_KERNEL_ATTRIBUTES : int = 0x1195;

  const CL_KERNEL_ARG_ADDRESS_QUALIFIER : int = 0x1196;
  const CL_KERNEL_ARG_ACCESS_QUALIFIER : int = 0x1197;
  const CL_KERNEL_ARG_TYPE_NAME : int = 0x1198;
  const CL_KERNEL_ARG_TYPE_QUALIFIER : int = 0x1199;
  const CL_KERNEL_ARG_NAME : int = 0x119A;

  const CL_KERNEL_ARG_ADDRESS_GLOBAL : int = 0x119B;
  const CL_KERNEL_ARG_ADDRESS_LOCAL : int = 0x119C;
  const CL_KERNEL_ARG_ADDRESS_CONSTANT : int = 0x119D;
  const CL_KERNEL_ARG_ADDRESS_PRIVATE : int = 0x119E;

  const CL_KERNEL_ARG_ACCESS_READ_ONLY : int = 0x11A0;
  const CL_KERNEL_ARG_ACCESS_WRITE_ONLY : int = 0x11A1;
  const CL_KERNEL_ARG_ACCESS_READ_WRITE : int = 0x11A2;
  const CL_KERNEL_ARG_ACCESS_NONE : int = 0x11A3;

  const CL_KERNEL_ARG_TYPE_NONE : int = 0b000;
  const CL_KERNEL_ARG_TYPE_CONST : int = 0b001;
  const CL_KERNEL_ARG_TYPE_RESTRICT : int = 0b010;
  const CL_KERNEL_ARG_TYPE_VOLATILE : int = 0b100;

  const CL_KERNEL_WORK_GROUP_SIZE : int = 0x11B0;
  const CL_KERNEL_COMPILE_WORK_GROUP_SIZE : int = 0x11B1;
  const CL_KERNEL_LOCAL_MEM_SIZE : int = 0x11B2;
  const CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE : int = 0x11B3;
  const CL_KERNEL_PRIVATE_MEM_SIZE : int = 0x11B4;
  const CL_KERNEL_GLOBAL_WORK_SIZE : int = 0x11B5;

  const CL_EVENT_COMMAND_QUEUE : int = 0x11D0;
  const CL_EVENT_COMMAND_TYPE : int = 0x11D1;
  const CL_EVENT_REFERENCE_COUNT : int = 0x11D2;
  const CL_EVENT_COMMAND_EXECUTION_STATUS : int = 0x11D3;
  const CL_EVENT_CONTEXT : int = 0x11D4;

  const CL_PROFILING_COMMAND_QUEUED : int = 0x1280;
  const CL_PROFILING_COMMAND_SUBMIT : int = 0x1281;
  const CL_PROFILING_COMMAND_START : int = 0x1282;
  const CL_PROFILING_COMMAND_END : int = 0x1283;

  record CLImageFormat{
    var imageChannelOrder : int;
    var imageChannelData_type : int;
  }

  record CLImageDesc{
    var imageType : int;
    var imageWidth : int;
    var imageHeight : int;
    var imageDepth : int;
    var imageArraySize : int;
    var imageRowPitch : uint;
    var imageSlicePitch : uint;
    var numMipLevels : int;
    var numSamples : int;
    var buffer : c_ptr(int);
  }
  
  extern proc clGetPlatformIDs(numEntries : int, platforms : c_void_ptr, ref numPlatforms : int) : int;
  extern proc clGetPlatformIDs(numEntries : int, platforms : c_void_ptr, numPlatforms : nil) : int;

  extern proc clGetPlatformInfo(platform : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetPlatformInfo(platform : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clGetDeviceIDs(platform : c_ptr(int), deviceType : int, numEntries : int, devices : c_void_ptr, ref numDevices : int) : int;
  extern proc clGetDeviceIDs(platform : c_ptr(int), deviceType : int, numEntries : int, devices : c_void_ptr, numDevices : nil) : int;

  extern proc clGetDeviceInfo(device : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetDeviceInfo(device : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clCreateSubDevices(inDevice : c_ptr(int), properties : c_void_ptr, numDevices : int, outDevices : c_void_ptr, ref numDevicesRet : int) : int;
  extern proc clCreateSubDevices(inDevice : c_ptr(int), properties : c_void_ptr, numDevices : int, outDevices : c_void_ptr, numDevicesRet : nil) : int;

  extern proc clRetainDevice(device : c_ptr(int)) : int;

  extern proc clReleaseDevice(device : c_ptr(int)) : int;

  extern proc clCreateContext(properties : c_void_ptr, numDevices : int, devices : c_void_ptr, pfnNotify : c_fn_ptr, userData : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateContext(properties : c_void_ptr, numDevices : int, devices : c_void_ptr, pfnNotify : c_fn_ptr, userData : c_void_ptr, errCodeRet : nil) : int;

  extern proc clCreateContextFromType(properties : c_void_ptr, deviceType : int, pfnNotify : c_fn_ptr, userData : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateContextFromType(properties : c_void_ptr, deviceType : int, pfnNotify : c_fn_ptr, userData : c_void_ptr, errCodeRet : nil) : int;

  extern proc clRetainContext(device : c_ptr(int)) : int;

  extern proc clReleaseContext(device : c_ptr(int)) : int;

  extern proc clGetContextInfo(context : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetContextInfo(context : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clCreateCommandQueue(context : c_ptr(int), device : c_ptr(int), properties : int, ref errCodeRet : int) : int;
  extern proc clCreateCommandQueue(context : c_ptr(int), device : c_ptr(int), properties : int, errCodeRet : nil) : int;

  extern proc clRetainCommandQueue(commandQueue : c_ptr(int)) : int;

  extern proc clReleaseCommandQueue(commandQueue : c_ptr(int)) : int;

  extern proc clGetCommandQueueInfo(commandQueue : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetCommandQueueInfo(commandQueue : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clCreateBuffer(context : c_ptr(int), flags : int, sizeB : int, hostPtr : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateBuffer(context : c_ptr(int), flags : int, sizeB : int, hostPtr : c_void_ptr, errCodeRet : nil) : int;

  extern proc clCreateSubBuffer(buffer : c_ptr(int), flags : int, bufferCreateType : int, bufferCreateInfo : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateSubBuffer(buffer : c_ptr(int), flags : int, bufferCreateType : int, bufferCreateInfo : c_void_ptr, errCodeRet : nil) : int;

  extern proc clCreateImage(context : c_ptr(int), flags : int, ref imageFormat : CLImageFormat, ref imageDesc : CLImageDesc, hostPtr : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateImage(context : c_ptr(int), flags : int, ref imageFormat : CLImageFormat, ref imageDesc : CLImageDesc, hostPtr : c_void_ptr, errCodeRet : nil) : int;

  extern proc clRetainMemObject(memObj : c_ptr(int)) : int;

  extern proc clReleaseMemObject(memObj : c_ptr(int)) : int;

  extern proc clGetSupportedImageFormats(context : c_ptr(int), flags : int, imageType : int, numEntries : int, imageFormats : c_void_ptr, ref numImageFormats : int) : int;
  extern proc clGetSupportedImageFormats(context : c_ptr(int), flags : int, imageType : int, numEntries : int, imageFormats : c_void_ptr, numImageFormats : nil) : int;

  extern proc clGetMemObjectInfo(memObj : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetMemObjectInfo(memObj : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clGetImageInfo(image : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetImageInfo(image : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clSetMemObjectDestructorCallback(memObj : c_ptr(int), pfnNotify : c_fn_ptr, userData : c_void_ptr) : int;

  extern proc clCreateSampler(context : c_ptr(int), normalizedCoords : int, addressingMode : int, filterMode : int, ref errCodeRet : int) : int;
  extern proc clCreateSampler(context : c_ptr(int), normalizedCoords : int, addressingMode : int, filterMode : int, errCodeRet : nil) : int;

  extern proc clRetainSampler(sampler : c_ptr(int)) : int;

  extern proc clReleaseSampler(sampler : c_ptr(int)) : int;

  extern proc clGetSamplerInfo(sampler : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, ref paramValueSizeRet : int) : int;
  extern proc clGetSamplerInfo(sampler : c_ptr(int), paramName : int, paramValueSize : int, paramValue : c_void_ptr, paramValueSizeRet : nil) : int;

  extern proc clCreateProgramWithSource(context : c_ptr(int), count : int, strings : c_void_ptr, lengths : c_void_ptr, ref errCodeRet : int) : int;
  extern proc clCreateProgramWithSource(context : c_ptr(int), count : int, strings : c_void_ptr, lengths : c_void_ptr, errCodeRet : nil) : int;

}