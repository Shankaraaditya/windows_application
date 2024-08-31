import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jungle_windows_application/feature/home_page/controller/home_controller.dart';
import 'package:jungle_windows_application/feature/login_page/view/login_view.dart';
import 'package:jungle_windows_application/services/fetch_memory.dart';
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      _cpuUsage = SystemUsage.getCpuUsage();
      _ramUsage = SystemUsage.getRamUsage();

      homeController.cpuUsage.value = _cpuUsage.round().toString();
      homeController.ramUsage.value = _ramUsage.round().toString();
      print("Cpu usage is ${_cpuUsage} and ram use ${_ramUsage}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 1024),
      minTextAdapt: true,
      builder: (context, widget) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      },
    );
  }
}
