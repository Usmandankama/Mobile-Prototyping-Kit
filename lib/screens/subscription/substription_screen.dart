import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/components/custom_button.dart';
import 'package:prototyping_kit/screens/subscription/components/benefit_item.dart';
import 'package:prototyping_kit/screens/subscription/components/subscription_tile.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int selectedPlan = 0;

  final plans = const [
    {
      'title': 'Yearly',
      'price': '€ 94.80',
      'period': 'every year',
      'discount': '-68% discount',
    },
    {
      'title': 'Monthly',
      'price': '€ 10.90',
      'period': 'every month',
      'discount': '-53% discount',
    },
    {
      'title': 'Weekly',
      'price': '€ 5.90',
      'period': 'every week',
      'discount': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Text(
                      'Choose your\nsubscription plan',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'And get a 7-day free trial',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // 🔹 Plans
                    ...List.generate(plans.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 12.h),
                        child: SubscriptionTile(
                          title: plans[index]['title']!,
                          price: plans[index]['price']!,
                          period: plans[index]['period']!,
                          discount: plans[index]['discount'],
                          selected: selectedPlan == index,
                          highlight: index == 0,
                          onTap: () {
                            setState(() => selectedPlan = index);
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 24.h),
                    // 🔹 Benefits
                    Container(
                      padding: EdgeInsets.all(16.r),
                      decoration: BoxDecoration(
                        color: AppColors.primaryMuted,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "You'll get:",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 12),
                          BenefitItem(text: 'Unlimited access'),
                          BenefitItem(text: '200GB storage'),
                          BenefitItem(text: 'Sync all your devices'),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
            // 🔹 Fixed Bottom Button
            CustomButton(title: 'Subscribe', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
