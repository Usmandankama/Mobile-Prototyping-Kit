import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/onboarding/components/onboard_page.dart';
import 'package:prototyping_kit/themes/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 PAGE CONTENT
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() => currentIndex = index);
                },
                children: const [
                  OnboardPage(
                    title: 'Create a prototype in just a few minutes',
                    subtitle:
                        'Enjoy these pre-made components and worry only about creating the best product ever.',
                  ),
                  OnboardPage(
                    title: 'Collaborate easily',
                    subtitle:
                        'Share your work and collaborate seamlessly with your team.',
                  ),
                  OnboardPage(
                    title: 'Create a prototype in just a few minutes',
                    subtitle:
                        'Enjoy these pre-made components and worry only about creating the best product ever.',
                  ),
                ],
              ),
            ),

            // 🔹 PAGE INDICATOR
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                activeDotColor: AppColors.primary,
                dotColor: AppColors.primaryMuted,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),

            const SizedBox(height: 24),

            // 🔹 FIXED BUTTON
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 10.h),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(vertical: 16.h),
                    ),
                    backgroundColor: WidgetStateProperty.all(AppColors.primary),
                  ),
                  onPressed: () {
                    if (currentIndex == 2) {
                      // Navigate to login
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    currentIndex == 2 ? 'Get Started' : 'Next',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
