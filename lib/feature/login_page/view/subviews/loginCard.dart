import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jungle_windows_application/common/buttons/primary_button.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';
import 'package:jungle_windows_application/feature/home_page/view/home_screen.dart';
import 'package:jungle_windows_application/feature/login_page/controller/login_controller.dart';

// ignore: must_be_immutable
class LoginCard extends StatelessWidget {
  LoginCard({super.key});

  final bool _isChecked = true;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 630.w,
      height: 612.h,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF161639).withOpacity(0.1),
                blurRadius: 50.r,
                spreadRadius: 0,
                offset: Offset(0, 20.h)),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 50.w, right: 50.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Secure Your PC",
              style: AppTextStyles.textStyle1,
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 530.w,
              height: 70.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFD7D7E0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(22, 22, 57, 0.06),
                    offset: const Offset(0, 0),
                    blurRadius: 9.r,
                  ),
                ],
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: TextField(
                  controller: usernameController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                    hintText: 'Username',
                    hintStyle: AppTextStyles.textStyle2,
                    border: InputBorder.none,
                  ),
                  style: AppTextStyles.textStyle3,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 530.w,
              height: 70.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFD7D7E0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(22, 22, 57, 0.06),
                    offset: const Offset(0, 0),
                    blurRadius: 9.r,
                  ),
                ],
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: TextField(
                  controller: passwordController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 0.h),
                    hintText: 'Password',
                    hintStyle: AppTextStyles.textStyle2,
                    border: InputBorder.none,
                  ),
                  style: AppTextStyles.textStyle3,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {},
                  activeColor: const Color(0xFF29296A),
                  checkColor: Colors.white,
                ),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: "By continuing, you agree to ",
                      style: AppTextStyles.textStyle3
                          .copyWith(color: const Color(0xFF161639)),
                      children: [
                        TextSpan(
                          text: "Terms & Conditions",
                          style: AppTextStyles.textStyle3
                              .copyWith(color: const Color(0xFF0C81EE)),
                        ),
                        TextSpan(
                          text: " and",
                          style: AppTextStyles.textStyle3
                              .copyWith(color: const Color(0xFF161639)),
                        ),
                        TextSpan(
                          text: " Privacy Policy.",
                          style: AppTextStyles.textStyle3
                              .copyWith(color: const Color(0xFF0C81EE)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            PrimaryButton(
                text: "Log In",
                onTap: () {
                  loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );
                })
          ],
        ),
      ),
    );
  }
}
