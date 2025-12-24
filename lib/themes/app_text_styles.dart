import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static const String fontFamily = 'Inter';
  static const action = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  // 🔠 Headings
  static TextStyle h1 = TextStyle(
    fontSize: 24.sp.sp,
    fontWeight: FontWeight.w800,
  );

  static TextStyle h2 = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800);

  static TextStyle h3 = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800);

  static TextStyle h4 = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700);

  static TextStyle h5 = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700);

  // 📄 Body
  static TextStyle bodyXL = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyL = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyM = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyS = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyXS = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  // 🔘 Action
  static TextStyle actionL = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle actionM = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle actionS = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );

  // 🏷 Caption
  static TextStyle caption = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );
}
