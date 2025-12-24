import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/auth/components/custom_textfield.dart';
import 'package:prototyping_kit/screens/components/custom_Button.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 310.h,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.primaryMuted),
            child: Center(
              child: Center(child: Icon(Icons.image, size: 50.sp)),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Welcome!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 24.h),
          Center(child: CustomTextfield(hintText: "Email address")),
          SizedBox(height: 16.h),
          Center(
            child: CustomTextfield(
              hintText: "Password",
              icon: isVisible ? Icons.visibility : Icons.visibility_off,
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  // style: Theme.of(
                  //   context,
                  // ).textTheme.bodyMedium?.copyWith(color: AppColors.primary),
                ),
              ),
            ),
          ),
          CustomButton(title: 'Login', onPressed: () {}),
          // SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member?"),
              TextButton(onPressed: () {}, child: Text("Sign Up")),
            ],
          ),
          Divider(),
          Center(child: Text('Or continue with')),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Container(
                  color: AppColors.primary,
                  width: 55.w,
                  height: 50.h,
                  child: Center(
                    child: Image.asset('assets/icons/google.png', scale: .6.sp),
                  ),
                ),
              ),

              SizedBox(width: 12.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Container(
                  color: AppColors.gray900,
                  width: 55.w,
                  height: 50.h,
                  child: Center(
                    child: Image.asset('assets/icons/apple.png', scale: .6.sp),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Container(
                  color: Colors.blue,
                  width: 55.w,
                  height: 50.h,
                  child: Center(
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      scale: .6.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
