import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';
class OnboardPage extends StatelessWidget {
  final String title;
  final String subtitle;

  const OnboardPage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: AppColors.primaryMuted,
            child: const Center(
              child: Icon(Icons.image, size: 80),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 12.h),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
