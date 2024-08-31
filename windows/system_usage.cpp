#include <windows.h>
#include <psapi.h>
#include <iostream>

extern "C" __declspec(dllexport) float getCpuUsage();
extern "C" __declspec(dllexport) float getRamUsage();

float getCpuUsage() {
    FILETIME idleTime, kernelTime, userTime;
    GetSystemTimes(&idleTime, &kernelTime, &userTime);

    static FILETIME prevIdleTime = idleTime;
    static FILETIME prevKernelTime = kernelTime;
    static FILETIME prevUserTime = userTime;

    ULONGLONG idle = (static_cast<ULONGLONG>(idleTime.dwLowDateTime) | 
                      (static_cast<ULONGLONG>(idleTime.dwHighDateTime) << 32)) -
                      (static_cast<ULONGLONG>(prevIdleTime.dwLowDateTime) |
                      (static_cast<ULONGLONG>(prevIdleTime.dwHighDateTime) << 32));

    ULONGLONG kernel = (static_cast<ULONGLONG>(kernelTime.dwLowDateTime) | 
                        (static_cast<ULONGLONG>(kernelTime.dwHighDateTime) << 32)) -
                        (static_cast<ULONGLONG>(prevKernelTime.dwLowDateTime) |
                        (static_cast<ULONGLONG>(prevKernelTime.dwHighDateTime) << 32));

    ULONGLONG user = (static_cast<ULONGLONG>(userTime.dwLowDateTime) |
                      (static_cast<ULONGLONG>(userTime.dwHighDateTime) << 32)) -
                      (static_cast<ULONGLONG>(prevUserTime.dwLowDateTime) |
                      (static_cast<ULONGLONG>(prevUserTime.dwHighDateTime) << 32));

    prevIdleTime = idleTime;
    prevKernelTime = kernelTime;
    prevUserTime = userTime;

    ULONGLONG total = kernel + user;
    return (total - idle) * 100.0 / total;
}

float getRamUsage() {
    MEMORYSTATUSEX status;
    status.dwLength = sizeof(status);
    GlobalMemoryStatusEx(&status);
    return (status.ullTotalPhys - status.ullAvailPhys) * 100.0 / status.ullTotalPhys;
}
