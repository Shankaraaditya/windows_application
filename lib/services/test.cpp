#include <windows.h>
#include <iostream>

MEMORYSTATUSEX memInfo;
FILETIME idleTime, kernelTime, userTime;

void GetSystemData() {
    memInfo.dwLength = sizeof(MEMORYSTATUSEX);
    GlobalMemoryStatusEx(&memInfo);

    GetSystemTimes(&idleTime, &kernelTime, &userTime);

    DWORDLONG totalPhysMem = memInfo.ullTotalPhys;
    DWORDLONG physMemUsed = memInfo.ullTotalPhys - memInfo.ullAvailPhys;
    // Convert FILETIME to a usable format for CPU usage, etc.

    // Process and store/send data as needed
    std::cout << "RAM Usage: " << physMemUsed << " / " << totalPhysMem << std::endl;
}