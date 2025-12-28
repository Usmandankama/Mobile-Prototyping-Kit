import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  int selectedIndex = 1; // default = S

  final sizes = ['XS', 'S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Size',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),

        Row(
          children: List.generate(sizes.length, (index) {
            final isSelected = index == selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : AppColors.primaryMuted,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  sizes[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
