import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.icon,
      required this.color, required this.textStyle});
  final String text;
  final VoidCallback onTap;
  final String icon;
  final Color color;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 205.w,
        height: 58.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon,height: 30.h,width: 30.w,),
              SizedBox(
                width: 20.w,
              ),
              Text(
                text,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
