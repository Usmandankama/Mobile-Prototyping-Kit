import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class BenefitItem extends StatelessWidget {
  final String text;

  const BenefitItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(Icons.star, size: 16, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
