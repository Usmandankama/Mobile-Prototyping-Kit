import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class OtpTextfield extends StatelessWidget {
  const OtpTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            border: Border.all(width: 2.w, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.r),
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
        SizedBox(width: 8.w,),
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            border: Border.all(width: 2.w, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.r),
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
        SizedBox(width:8.w),
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            border: Border.all(width: 2.w, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.r),
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
        SizedBox(width:8.w),
        Container(
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            border: Border.all(width: 2.w, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.r),
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
