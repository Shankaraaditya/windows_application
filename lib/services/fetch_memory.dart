import 'dart:ffi';
import 'dart:io' show Platform;

typedef GetCpuUsageC = Float Function();
typedef GetCpuUsageDart = double Function();

typedef GetRamUsageC = Float Function();
typedef GetRamUsageDart = double Function();

class SystemUsage {
  static final DynamicLibrary _dylib = Platform.isWindows
      ? DynamicLibrary.open('system_usage.dll')
      : throw UnsupportedError('This platform is not supported');

  static final GetCpuUsageDart getCpuUsage = _dylib
      .lookupFunction<GetCpuUsageC, GetCpuUsageDart>('getCpuUsage');

  static final GetRamUsageDart getRamUsage = _dylib
      .lookupFunction<GetRamUsageC, GetRamUsageDart>('getRamUsage');
}
