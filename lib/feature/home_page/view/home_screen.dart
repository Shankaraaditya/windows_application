import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jungle_windows_application/common/buttons/control_buttons.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';
import 'package:jungle_windows_application/feature/home_page/controller/home_controller.dart';
import 'package:jungle_windows_application/feature/home_page/view/subviews/navigation_panel.dart';
import 'package:jungle_windows_application/feature/home_page/view/subviews/user_info.dart';
import 'package:jungle_windows_application/feature/login_page/view/subviews/loginCard.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController vm = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("${vm.ramUsage.value}");
    return Scaffold(
  body: AnimationLimiter(
    child: Row(
      children: [
        const NavigationPanel(),
        Expanded( 
          child: Padding( 
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Column(
              children: [
                SizedBox(height: 9.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ControlButtons(),
                  ],
                ), 
                SizedBox(height: 20.h),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Analytics",
                      style: AppTextStyles.textStyle5.copyWith(fontSize: 24.sp),
                    ),
                    AnimationConfiguration.synchronized(
                      
                      child: SlideAnimation(
                        verticalOffset: 300,
                        child: UserDetails())),
                  ],
                ),
    
                SizedBox(height: 100.h),
                AnimationConfiguration.synchronized(

                  child: ScaleAnimation(
                    duration: Duration(seconds: 3),
                    child: Obx(() {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 105.r,
                            lineWidth: 17.0.w,
                            animation: true,
                            percent: int.parse(vm.cpuUsage.value) / 100,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${vm.cpuUsage.value} %",
                                  style: AppTextStyles.textStyle8,
                                ),
                                Text(
                                  "CPU",
                                  style: AppTextStyles.textStyle8,
                                )
                              ],
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: const Color(0xFF147AD6),
                          ),
                          Flexible(child: SizedBox(width: 100.w)),
                          CircularPercentIndicator(
                            radius: 105.r,
                            lineWidth: 17.0.w,
                            animation: true,
                            percent: int.parse(vm.ramUsage.value) / 100,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${vm.ramUsage.value} %",
                                  style: AppTextStyles.textStyle8,
                                ),
                                Text(
                                  "RAM",
                                  style: AppTextStyles.textStyle8,
                                )
                              ],
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFF147AD6),
                          )
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
)





;
  }
}
