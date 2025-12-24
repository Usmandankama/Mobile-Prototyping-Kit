import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class OtpTextfield extends StatelessWidget {
  const OtpTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: AppColors.primaryDark),
            borderRadius: BorderRadius.circular(3.r),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
