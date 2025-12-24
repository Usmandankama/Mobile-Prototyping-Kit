import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText, this.icon, this.onTap});
  final String? hintText;
  final IconData? icon;
  final VoidCallback? onTap; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 40.h,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Icon(icon, size: 20.sp),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        ),
      ),
    );
  }
}
