import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.text, required this.onTap}) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 530.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: const Color(0xFF161639),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Text(text,style: AppTextStyles.textStyle4,),
        ),
      ),
    );
  }
}
