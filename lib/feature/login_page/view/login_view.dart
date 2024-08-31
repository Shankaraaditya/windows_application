import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jungle_windows_application/feature/login_page/view/subviews/loginCard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        actions: [
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: _Constants.columnPaddingLeft,
          right: _Constants.columnPaddingRight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SvgPicture.asset("assets/svg/login.svg")
            Container(
              margin: EdgeInsets.only(left: 20.w),
              width: 210.sp,
              height: 88.sp,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/svg/logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 95.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: SvgPicture.asset("assets/svg/login.svg",height: 498.h,width: 680.w,)),

                 SizedBox(width: 10.w,),

                 Flexible(
                   child: LoginCard(),
                 )
              ],
            )


          ],
        ),
      ),
    );
  }
}

mixin _Constants {
  static double columnPaddingLeft = 60.w;
  static double columnPaddingRight = 60.w;
}
