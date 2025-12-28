import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  int selectedIndex = 2;

  final colors = [
    Colors.black,
    Colors.grey,
    Colors.grey.shade400,
    Colors.grey.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),

        Row(
          children: List.generate(colors.length, (index) {
            final isSelected = index == selectedIndex;

            return GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colors[index],
                  shape: BoxShape.circle,
                ),
                child: isSelected
                    ? const Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      )
                    : null,
              ),
            );
          }),
        ),
      ],
    );
  }
}
