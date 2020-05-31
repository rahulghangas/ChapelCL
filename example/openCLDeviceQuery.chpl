use ChapelCL;

var numPlatforms : int;
clGetPlatformIDs(0, nil, numPlatforms);

var myPlatforms = c_malloc(c_ptr(int), numPlatforms);

clGetPlatformIDs(numPlatforms, myPlatforms, nil);

writeln("");
writeln("Your system platform id(s) are:");

for i in 0..#numPlatforms {
  writeln("\tPlatform no. ", i);

  var totalBufferLength = 1024;
  var lengthOfBuferUsed = 0;
  var myPlatformName : [0..totalBufferLength] c_char;
  clGetPlatformInfo(myPlatforms[i], 
                    CL_PLATFORM_NAME, 
                    totalBufferLength, 
                    c_ptrTo(myPlatformName), 
                    lengthOfBuferUsed);
  writeln("\t\tname:\t\t",  
          createStringWithNewBuffer(c_ptrTo(myPlatformName) : c_ptr(uint(8)), 
          lengthOfBuferUsed));
  
  var myPlatformVendor : [0..#totalBufferLength] c_char;
  lengthOfBuferUsed = 0;
  clGetPlatformInfo(myPlatforms[i], 
                    CL_PLATFORM_VENDOR, 
                    totalBufferLength, 
                    c_ptrTo(myPlatformVendor), 
                    lengthOfBuferUsed);
  writeln("\t\tvendor:\t\t",  
          createStringWithNewBuffer(c_ptrTo(myPlatformVendor) : c_ptr(uint(8)), 
          lengthOfBuferUsed));

  var myPaltformProfile : [0..#totalBufferLength] c_char;
  lengthOfBuferUsed = 0;
  clGetPlatformInfo(myPlatforms[i], 
                    CL_PLATFORM_PROFILE, 
                    totalBufferLength, 
                    c_ptrTo(myPaltformProfile), 
                    lengthOfBuferUsed);
  writeln("\t\tplatform:\t",  
          createStringWithNewBuffer(c_ptrTo(myPaltformProfile) : c_ptr(uint(8)), 
          lengthOfBuferUsed));

  var myPlatformVersion : [0..#totalBufferLength] c_char;
  lengthOfBuferUsed = 0;
  clGetPlatformInfo(myPlatforms[i], 
                    CL_PLATFORM_VERSION, 
                    totalBufferLength, 
                    c_ptrTo(myPlatformVersion), 
                    lengthOfBuferUsed);
  writeln("\t\tversion:\t",  
          createStringWithNewBuffer(c_ptrTo(myPlatformVersion) : c_ptr(uint(8)), 
          lengthOfBuferUsed));

  var myPlatformExtensions : [0..#totalBufferLength] c_char;
  lengthOfBuferUsed = 0;
  clGetPlatformInfo(myPlatforms[i], 
                    CL_PLATFORM_EXTENSIONS, 
                    totalBufferLength, 
                    c_ptrTo(myPlatformExtensions), 
                    lengthOfBuferUsed);
  writeln("\t\textensions:\t",  
          createStringWithNewBuffer(c_ptrTo(myPlatformExtensions) : c_ptr(uint(8)), 
          lengthOfBuferUsed));

  var numOfDevices = 0;
  clGetDeviceIDs(myPlatforms[i], CL_DEVICE_TYPE_ALL, 0, nil, numOfDevices);
  if numOfDevices == 0 {
    halt("No devices found for this platform");
  }
  writeln("\n\t\twith device id(s):");

  var myDevices = c_malloc(c_ptr(int), numOfDevices);
  clGetDeviceIDs(myPlatforms[i], 
                 CL_DEVICE_TYPE_ALL, 
                 numOfDevices, 
                 myDevices, 
                 nil);

  for j in 0..#numOfDevices {
    writeln("\t\tdevice no. ", j);
    var myDeviceName : [0..#totalBufferLength] c_char;
    lengthOfBuferUsed = 0;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_NAME, 
                    totalBufferLength, 
                    c_ptrTo(myDeviceName), 
                    lengthOfBuferUsed);
    writeln("\t\t\tname:\t\t",  
            createStringWithNewBuffer(c_ptrTo(myDeviceName) : c_ptr(uint(8)), 
            lengthOfBuferUsed));

    var myDeviceVendor : [0..#totalBufferLength] c_char;
    lengthOfBuferUsed = 0;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_VENDOR, 
                    totalBufferLength, 
                    c_ptrTo(myDeviceVendor), 
                    lengthOfBuferUsed);
    writeln("\t\t\tvendor:\t\t",  
            createStringWithNewBuffer(c_ptrTo(myDeviceVendor) : c_ptr(uint(8)), 
            lengthOfBuferUsed), "\n");

    var myDeviceType: int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_TYPE, 
                    numBytes(int), 
                    c_ptrTo(myDeviceType), 
                    nil);
    select myDeviceType {
      when CL_DEVICE_TYPE_CPU do writeln("\t\t\tdevice type:\t\tCPU");
      when CL_DEVICE_TYPE_GPU do writeln("\t\t\tdevice type:\t\tGPU");
      when CL_DEVICE_TYPE_ACCELERATOR do writeln("\t\t\tdevice type:\t\tACCELERATOR");
      when CL_DEVICE_TYPE_DEFAULT do writeln("\t\t\tdevice type:\t\tDEFAULT");
      otherwise do writeln("\t\t\tno device type!");
    }

    var numOfCores : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_MAX_COMPUTE_UNITS, 
                    numBytes(int), 
                    c_ptrTo(numOfCores), 
                    nil);
    writeln("\t\t\tcore count:\t\t", numOfCores);

    var clockFrequency : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_MAX_CLOCK_FREQUENCY, 
                    numBytes(int), 
                    c_ptrTo(clockFrequency), 
                    nil);
    writeln("\t\t\tmax clock frequency:\t", clockFrequency, " MHz");

    var maxWorkGroupSize : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_MAX_WORK_GROUP_SIZE, 
                    numBytes(int), 
                    c_ptrTo(maxWorkGroupSize), 
                    nil);
    writeln("\t\t\tmax total work size:\t", maxWorkGroupSize);

    var maxWorkItemDimensions : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS, 
                    numBytes(int), 
                    c_ptrTo(maxWorkItemDimensions), 
                    nil);
    writeln("\t\t\tmax work dimensions:\t", maxWorkItemDimensions);

    var maxWorkItemSizes : [0..#maxWorkItemDimensions] int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_MAX_WORK_ITEM_SIZES, 
                    numBytes(int) * maxWorkItemDimensions, 
                    c_ptrTo(maxWorkItemSizes), 
                    nil);
    writeln("\t\t\tmax work item size:\t", maxWorkItemSizes);

    var globalMemSize : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_GLOBAL_MEM_SIZE, 
                    numBytes(int), 
                    c_ptrTo(globalMemSize), 
                    nil);
    writeln("\t\t\tglobal memory size:\t", (globalMemSize >> 20) : uint, " MiBs");

    var globalCacheSize : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_GLOBAL_MEM_CACHE_SIZE, 
                    numBytes(int), 
                    c_ptrTo(globalCacheSize), 
                    nil);
    writeln("\t\t\tglobal cache size:\t", (globalCacheSize >> 10) : uint, " KiBs");

    var globalCachelineSize : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE, 
                    numBytes(int), 
                    c_ptrTo(globalCachelineSize), 
                    nil);
    writeln("\t\t\tglobal cacheline size:\t", (globalCachelineSize) : uint, " bytes");

    var localMemSize : int;
    clGetDeviceInfo(myDevices[j], 
                    CL_DEVICE_LOCAL_MEM_SIZE, 
                    numBytes(int), 
                    c_ptrTo(localMemSize), 
                    nil);
    writeln("\t\t\tlocal memory size:\t", (localMemSize >> 10) : uint, " KiBs");

  }

  writeln("");
  c_free(myDevices);
}

c_free(myPlatforms);