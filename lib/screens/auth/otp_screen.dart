import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/auth/components/otp_textfield.dart';
import 'package:prototyping_kit/screens/components/custom_Button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200.h),
          Text(
            'Enter confirmation code',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 8.h),
          Text(
            'A 4-digit code was sent to name@email.com',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 40.h),
          Center(child: OtpTextfield()),
          SizedBox(height: 150.h),

          Text("Resend Code", style: Theme.of(context).textTheme.labelLarge),
          SizedBox(height: 12.h),
          CustomButton(title: 'Continue', onPressed: () {}),
        ],
      ),
    );
  }
}
