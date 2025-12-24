import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/components/custom_textfield.dart';
import 'package:prototyping_kit/screens/components/custom_button.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120.h),
            Text('Sign up', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 8.h),
            Text('Create an account to get started '),
            SizedBox(height: 24.h),
            Text('Name', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 8.h),
            CustomTextfield(hintText: 'Enter your name'),
            SizedBox(height: 16.h),
            Text(
              'Email Address',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8.h),
            CustomTextfield(hintText: 'name@example.com'),
            SizedBox(height: 16.h),
            Text('Password', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 8.h),

            CustomTextfield(
              hintText: 'Create a password',
              icon: Icons.visibility_off,
            ),
            SizedBox(height: 16.h),
            CustomTextfield(
              hintText: 'Confirm your password',
              icon: Icons.visibility_off,
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  activeColor: AppColors.primary,
                  checkColor: AppColors.white,
                ),
                Container(
                  width: 270.w,
                  child: Text(
                    'I\'ve read and agree with the Terms and Conditions and the Privacy Policy.',
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            CustomButton(title: 'Sign Up', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
