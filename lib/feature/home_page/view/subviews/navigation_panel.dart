import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle_windows_application/common/buttons/navigation_button.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 243.w,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF161639),
            Color(0xFF3E3E9F),
          ],
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60.r),
          bottomRight: Radius.circular(60.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, left: 0.w),
        child: Column(
          children: [
            Container(
                width: 180.w,
                height: 74.h,
                child: Image.asset("assets/svg/logo2.png")),
            SizedBox(
              height: 30.h,
            ),
            NavigationButton(
              text: "Analytics",
              onTap: () {},
              icon: "assets/svg/analytics.svg",
              color: Color(0xFFFFFFFF),
              textStyle: AppTextStyles.textStyle5,
            ),
            Spacer(),
            NavigationButton(
              text: "Feedback",
              onTap: () {},
              icon: "assets/svg/feedback.svg",
              color: Colors.transparent,
              textStyle: AppTextStyles.textStyle5.copyWith(color: Color(0xFFFFFFFF)),
            ),
            SizedBox(height: 20.h,)
        
          ],
        ),
      ),
    );
  }
}
