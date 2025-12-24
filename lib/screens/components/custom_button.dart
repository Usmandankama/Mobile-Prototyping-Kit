import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 10.h),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
            ),
            padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: 16.h),
            ),
            backgroundColor: WidgetStateProperty.all(AppColors.primary),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
