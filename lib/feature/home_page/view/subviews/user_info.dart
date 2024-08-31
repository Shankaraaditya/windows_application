import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jungle_windows_application/common/styles/typography.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124.w,
      height: 70.h,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hello",
                style: AppTextStyles.textStyle6,
              ),
              Text(
                "User",
                style: AppTextStyles.textStyle7,
              ),
            ],
          ),
          SizedBox(
            width: 5.w,
          ),
          CircleAvatar(
            radius: 40.r,
            backgroundImage: AssetImage("assets/svg/user.png"),
          )
        ],
      ),
    );
  }
}
