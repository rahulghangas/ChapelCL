/* Documentation for ChapelCL */
module ChapelCL {
  use SysCTypes;

  const CL_SUCCESS : c_int = 0;
  const CL_DEVICE_NOT_FOUND : c_int = -1;
  const CL_DEVICE_NOT_AVAILABLE : c_int = -2;
  const CL_COMPILER_NOT_AVIALABLE : c_int = -3;
  const CL_MEM_OBJECT_ALLOCATION_FAILURE : c_int = -4;
  const CL_OUT_OF_RESOURCES : c_int = -5;
  const CL_OUT_OF_HOST_MEMORY : c_int = -6;
  const CL_PROFILING_INFO_NOT_AVAILABLE : c_int = -7;
  const CL_MEM_COPY_OVERLAP : c_int = -8;
  const CL_IMAGE_FORMAT_MISMATCH : c_int = -9;
  const CL_IMAGE_FORMAT_NOT_SUPPORTED : c_int = -10;
  const CL_BUILD_PROGRAM_FAILURE : c_int = 11;
  const CL_MAP_FAILURE : c_int = -12;
  const CL_MISALIGNED_SUB_BUFFER_OFFSET : c_int = -13;
  const CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST : c_int = -14;
  const CL_COMPILE_PROGRAM_FAILURE : c_int = -15;
  const CL_LINKER_NOT_AVAILABLE : c_int = -16;
  const CL_LINK_PROGRAM_FAILURE : c_int = -17;
  const CL_DEVICE_PARTITION_FAILED : c_int = -18;
  const CL_KERNEL_ARG_INFO_NOT_AVAILABLE : c_int = -19;
  
  const CL_INVALID_VALUE : c_int = -30;
  const CL_INVALID_DEVICE_TYPE : c_int = -31;
  const CL_INVALID_PLATFORM : c_int = -32;
  const CL_INVALID_DEVICE : c_int = -33;
  const CL_INVALID_CONTEXT : c_int = -34;
  const CL_INVALID_QUEUE_PROPERTIES : c_int = -35;
  const CL_INVALID_COMMAND_QUEUE : c_int = -36;
  const CL_INVALID_HOST_PTR : c_int = -37;
  const CL_INVALID_MEM_OBJECT : c_int = -38;
  const CL_INVALID_IMAGE_FORMAT_DESCRIPTION : c_int = -39;
  const CL_INVALID_IMAGE_SIZE : c_int = -40;
  const CL_INVALID_SAMPLER : c_int = -41;
  const CL_INVALID_BINARY : c_int = -42;
  const CL_INVALID_BUILD_OPTIONS : c_int = -43;
  const CL_INVALID_PROGRAM : c_int = -44;
  const CL_INVALID_PROGRAM_EXECUTABLE : c_int = -45;
  const CL_INVALID_KERNEL_NAME : c_int = -46;
  const CL_INVALID_IMAGE_DEFINITION : c_int = -47;
  const CL_INVALID_KERNEL : c_int = -48;
  const CL_INVALID_ARG_INDEX : c_int = -49;
  const CL_INVALID_ARG_VALUE : c_int = -50;
  const CL_INVALID_ARG_SIZE : c_int = -51;
  const CL_INVALID_KERNEL_ARGS : c_int = -52;
  const CL_INVALID_WORK_DIMENSION : c_int = -53;
  const CL_INVALID_WORK_GROUP_SIZE : c_int = -54;
  const CL_INVALID_WORK_ITEM_SIZE : c_int = -55;
  const CL_INVALID_GLOBAL_OFFSET : c_int = -56;
  const CL_INVALID_EVENT_WAIT_LIST : c_int = -57;
  const CL_INVALID_EVENT : c_int = -58;
  const CL_INVALID_OPERATION : c_int = -59;
  const CL_INVALID_GL_OBJECT : c_int = -60;
  const CL_INVALID_INVALID_BUFFER_SIZE : c_int = -61;
  const CL_INVALID_MIP_LEVEL : c_int = -62;
  const CL_INVALID_GLOBAL_WORK_SIZE : c_int = -63;
  const CL_INVALID_PROPERTY : c_int = -64;
  const CL_INVALID_IMAGE_DESCRIPTOR : c_int = -65;
  const CL_INVALID_COMPILER_OPTIONS : c_int = -66;
  const CL_INVALID_LINKER_OPTIONS : c_int = -67;
  const CL_INVALID_DEVICE_PARTITION_COUNT : c_int = -68;

  const CL_VERSION_1_0 : c_int = 1;
  const CL_VERSION_1_1 : c_int = 1;
  const CL_VERSION_1_2 : c_int = 1;

  const CL_FALSE : c_int = 0;
  const CL_TRUE : c_int = 1;
  const CL_BLOCKING : c_int = CL_TRUE;
  const CL_NON_BLOCKING : c_int = CL_FALSE;

  const CL_PLATFORM_PROFILE : c_int = 0x0900;
  const CL_PLATFORM_VERSION : c_int = 0x0901;
  const CL_PLATFORM_NAME : c_int = 0x0902;
  const CL_PLATFORM_VENDOR : c_int = 0x0903;
  const CL_PLATFORM_EXTENSIONS : c_int = 0x0904;
  
  const CL_DEVICE_TYPE_DEFAULT : c_long = 0b00001;
  const CL_DEVICE_TYPE_CPU : c_long = 0b00010;
  const CL_DEVICE_TYPE_GPU : c_long = 0b00100;
  const CL_DEVICE_TYPE_ACCELERATOR : c_long = 0b01000;
  const CL_DEVICE_TYPE_CUSTOM : c_long = 0b10000;
  const CL_DEVICE_TYPE_ALL : c_long = 0xFFFFFFFF;

  const CL_DEVICE_CL_DEVICE_TYPE : c_int = 0x1000;
  const CL_DEVICE_VENDOR_ID : c_int = 0x1001;
  const CL_DEVICE_MAX_COMPUTE_UNITS : c_int = 0x1002;
  const CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS : c_int = 0x1003;
  const CL_DEVICE_MAX_WORK_GROUP_SIZES : c_int = 0x1004;
  const CL_DEVICE_MAX_WORK_GROUP_ITEMS : c_int = 0x1005;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR : c_int = 0x1006;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT : c_int = 0x1007;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT : c_int = 0x1008;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG : c_int = 0x1009;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT : c_int = 0x100A;
  const CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE : c_int = 0x100B;
  const CL_DEVICE_MAX_CLOCK_FREQUENCY : c_int = 0x100C;
  const CL_DEVICE_ADDRESS_BITS : c_int = 0x100D;
  const CL_DEVICE_MAX_READ_IMAGE_ARGS : c_int = 0x100E;
  const CL_DEVICE_MAX_WRITE_IMAGE_ARGS : c_int = 0x100F;
  const CL_DEVICE_MAX_MEM_ALLOC_SIZE : c_int = 0x1010;
  const CL_DEVICE_IMAGE2D_MAX_WIDTH : c_int = 0x1011;
  const CL_DEVICE_IMAGE2D_MAX_HEIGHT : c_int = 0x1012;
  const CL_DEVICE_IMAGE3D_MAX_WIDTH : c_int = 0x1013;
  const CL_DEVICE_IMAGE3D_MAX_HEIGHT : c_int = 0x1014;
  const CL_DEVICE_IMAGE3D_MAX_DEPTH : c_int = 0x1015;
  const CL_DEVICE_IMAGE_SUPPORT : c_int = 0x1016;
  const CL_DEVICE_MAX_PARAMTER_SIZE : c_int = 0x1017;
  const CL_DEVICE_MAX_SAMPLERS : c_int = 0x1018;
  const CL_DEVICE_MEM_BASE_ADDR_ALIGN : c_int = 0x1019;
  const CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE : c_int = 0x101A;
  const CL_DEVICE_SINGLE_FP_CONFIG : c_int = 0x101B;
  const CL_DEVICE_GLOBAL_MEM_CACHE_TYPE : c_int = 0x101C;
  const CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE : c_int = 0x101D;
  const CL_DEVICE_GLOBAL_MEM_CACHE_SIZE : c_int = 0x101E;
  const CL_DEVICE_GLOBAL_MEM_SIZE : c_int = 0x101F;
  const CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE : c_int = 0x1020;
  const CL_DEVICE_MAX_CONSTANT_ARGS : c_int = 0x1021;
  const CL_DEVICE_LOCAL_MEM_TYPE : c_int = 0x1022;
  const CL_DEVICE_LOCAL_MEM_SIZE : c_int = 0x1023;
  const CL_DEVICE_ERROR_CORRECTION_SUPPORT : c_int = 0x1024;
  const CL_DEVICE_PROFILING_TIMER_RESOLUTION : c_int = 0x1025;
  const CL_DEVICE_ENDIAN_LITTLE : c_int = 0x1026;
  const CL_DEVICE_AVAILABLE : c_int = 0x1027;
  const CL_DEVICE_COMPILER_AVAILABLE : c_int = 0x1028;
  const CL_DEVICE_EXECUTION_CAPABILITIES : c_int = 0x1029;
  const CL_DEVICE_QUEUE_PROPERTIES : c_int = 0x102A;
  const CL_DEVICE_DEVICE_NAME : c_int = 0x102B;
  const CL_DEVICE_VENDOR : c_int = 0x102C;
  const CL_DRIVER_VERSION : c_int = 0x102D;
  const CL_DEVICE_PROFILE : c_int = 0x102E;
  const CL_DEVICE_VERSION : c_int = 0x102F;
  const CL_DEVICE_EXTENSIONS : c_int = 0x1030;
  const CL_DEVICE_PLATFORM : c_int = 0x1031;
  const CL_DEVICE_DEVICE_DOUBLE_FP_CONFIG : c_int = 0x1032;
  const CL_DEVICE_DEVICE_HALF_FP_CONFIG : c_int = 0x1033;
  const CL_DEVICE_DEVICE_PREFERRED_VECTOR_WIDTH_HALF : c_int = 0x1034;
  const CL_DEVICE_HOST_UNIFIED_MEMORY : c_int = 0x1035;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR : c_int = 0x1036;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT : c_int = 0x1037;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_INT : c_int = 0x1038;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG : c_int = 0x1039;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT : c_int = 0x103A;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE : c_int = 0x103B;
  const CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF : c_int = 0x103C;
  const CL_DEVICE_OPENCL_C_VERSION : c_int = 0x103D;
  const CL_DEVICE_LINKER_AVAILABLE : c_int = 0x103E;
  const CL_DEVICE_BUILT_IN_KERNELS : c_int = 0x103F;
  const CL_DEVICE_IMAGE_MAX_BUFFER_SIZE : c_int = 0x1040;
  const CL_DEVICE_IMAGE_MAX_ARRAY_SIZE : c_int = 0x1041;
  const CL_DEVICE_PARENT_DEVICE : c_int = 0x1042;
  const CL_DEVICE_PARTITION_MAX_SUB_DEVICES : c_int = 0x1043;
  const CL_DEVICE_PARTITION_PROPERTIES : c_int = 0x1044;
  const CL_DEVICE_PARTITION_AFFINITY_DOMAIN : c_int = 0x1045;
  const CL_DEVICE_PARTITION_TYPE : c_int = 0x1046;
  const CL_DEVICE_REFERENCE_COUNT : c_int = 0x1047;
  const CL_DEVICE_PREFERRED_INTEROP_USER_SYNC : c_int = 0x1048;
  const CL_DEVICE_PRINTF_BUFFER_SIZE : c_int = 0x1049;

  const CL_FP_DENORM : c_long = 0b00000001;
  const CL_FP_INF_NAN : c_long = 0b00000010;
  const CL_FP_ROUND_TO_NEAREST : c_long = 0b00000100;
  const CL_FP_ROUND_TO_ZERO : c_long = 0b00001000;
  const CL_FP_ROUND_TO_INF : c_long = 0b00010000;
  const CL_FP_FMA : c_long = 0b00100000;
  const CL_FP_SOFT_FLOAT : c_long = 0b01000000;
  const CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT : c_long = 0b10000000;

  const CL_NONE : c_int = 0x1;
  const CL_READ_ONLY_CACHE : c_int = 0x2;
  const CL_READ_WRITE_CACHE : c_int = 0x3;

  const CL_LOCAL : c_int = 0x1;
  const CL_GLOBAL : c_int = 0x2;

  const CL_EXEC_KERNEL : c_long = 0b01;
  const CL_EXEC_NATIVE_KERNEL : c_long = 0b10;

  const CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE : c_long = 0b01;
  const CL_QUEUE_PROFILING_ENABLE : c_long = 0b10;

  const CL_CONTEXT_REFERENCE_COUNT : c_int = 0x1080;
  const CL_CONTEXT_DEVICES : c_int = 0x1081;
  const CL_CONTEXT_PROPERTIES: c_int = 0x1082;
  const CL_CONTEXT_NUM_DEVICES : c_int = 0x1083;

  const ref CL_CONTEXT_PLATFORM : c_int = 0x1084;
  const ref CL_CONTEXT_INTEROP_USER_SYNC : c_int = 0x1085;

  const CL_QUEUE_CONTEXT : c_int = 0x1090;
  const CL_QUEUE_DEVICE : c_int = 0x1091;
  const CL_QUEUE_REFERENCE_COUNT : c_int = 0x1092;
  const CL_QUEUE_PROPERTIES : c_int = 0x1093;

}
