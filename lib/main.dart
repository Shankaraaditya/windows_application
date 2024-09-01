import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jungle_windows_application/feature/home_page/controller/home_controller.dart';
import 'package:jungle_windows_application/feature/home_page/view/home_screen.dart';
import 'package:jungle_windows_application/feature/login_page/view/login_view.dart';
import 'package:jungle_windows_application/services/fetch_memory.dart';
import 'dart:async';
 import 'dart:io';


void main() {
   HttpOverrides.global = MyHttpOverrides();

  runApp(MyApp());
}

 class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HomeController homeController = Get.put(HomeController());
  var _cpuUsage;
  var _ramUsage;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startMonitoring();
  }

  void _startMonitoring() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      _cpuUsage = SystemUsage.getCpuUsage();
      _ramUsage = SystemUsage.getRamUsage();

      homeController.cpuUsage.value = _cpuUsage.toStringAsFixed(0);
      homeController.ramUsage.value = _ramUsage.toStringAsFixed(0);
      print("Cpu usage is ${homeController.cpuUsage.value} and ram use ${homeController.ramUsage.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      builder: (context, widget) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      },
    );
  }
}
