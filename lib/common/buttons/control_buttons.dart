import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 80.w,
      child: Row(
        children: [
          Container(
            height: 33.h,
            width: 33.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: const Color(0xFFBDBDCD))),
            child: Center(
              child: Icon(
                Icons.horizontal_rule_rounded,
                size: 15.h,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
              height: 33.h,
              width: 33.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: const Color(0xFFBDBDCD))),
              child: Center(
                child: Icon(
                  Icons.close,
                  size: 15.h,
                ),
              ))
        ],
      ),
    );
  }
}
