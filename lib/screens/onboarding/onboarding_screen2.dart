import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  final PageController _pageController = PageController();
  int currentStep = 0;

  static const int totalSteps = 3;

  final List<String> interests = [
    'User Interface',
    'User Experience',
    'User Research',
    'UX Writing',
    'User Testing',
    'Service Design',
    'Strategy',
    'Design Systems',
  ];

  final Set<String> selected = {
    'User Interface',
    'User Research',
    'Strategy',
    'Design Systems',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),

              // 🔹 Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: TweenAnimationBuilder<double>(
                  tween: Tween(
                    begin: 0,
                    end: (currentStep + 1) / totalSteps,
                  ),
                  duration: const Duration(milliseconds: 300),
                  builder: (context, value, _) {
                    return LinearProgressIndicator(
                      value: value,
                      minHeight: 6.h,
                      backgroundColor: AppColors.primaryMuted,
                      valueColor: const AlwaysStoppedAnimation(
                        AppColors.primary,
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 32.h),

              // 🔹 Page Content
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics:
                      const NeverScrollableScrollPhysics(), // wizard-style
                  children: [
                    _buildInterestSelection(),
                    _buildPlaceholderStep('Almost there'),
                    _buildPlaceholderStep('Final step'),
                  ],
                ),
              ),

              // 🔹 Fixed Button
              SizedBox(height: 16.h),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      AppColors.primary,
        
                    ),
                    foregroundColor: WidgetStateProperty.all(
                      AppColors.white,
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(vertical: 16.h),
                      
                    ),
                  ),
                  onPressed: selected.isEmpty && currentStep == 0
                      ? null
                      : () {
                          if (currentStep < totalSteps - 1) {
                            setState(() => currentStep++);

                            _pageController.animateToPage(
                              currentStep,
                              duration: const Duration(milliseconds: 350),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            // ✅ Finished onboarding
                          }
                        },
                  child: Text(
                    style: TextStyle(
                      fontSize: 16.sp,
                      // color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    currentStep == totalSteps - 1 ? 'Finish' : 'Next',
                  ),
                ),
              ),

              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 STEP 1: Interest Selection
  Widget _buildInterestSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Personalise your\nexperience',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(height: 8.h),
        Text(
          'Choose your interests.',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.gray500),
        ),
        SizedBox(height: 24.h),

        Expanded(
          child: ListView.separated(
            itemCount: interests.length,
            separatorBuilder: (_, __) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              final item = interests[index];
              final isSelected = selected.contains(item);

              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selected.remove(item);
                    } else {
                      selected.add(item);
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 16.w,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryMuted
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.primaryMuted,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          item,
                          style: Theme.of(context).textTheme.bodyMedium,            ),
                      ),
                      if (isSelected)
                        Icon(
                          Icons.check,
                          color: AppColors.primary,
                          size: 20.sp,
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // 🔹 Placeholder steps (replace later)
  Widget _buildPlaceholderStep(String title) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
