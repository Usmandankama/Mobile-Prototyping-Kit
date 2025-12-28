import 'package:flutter/material.dart';

class CheckoutSteps extends StatelessWidget {
  final int currentStep;
  const CheckoutSteps({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final steps = ['Your bag', 'Shipping', 'Payment', 'Review'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(steps.length, (index) {
        final completed = index < currentStep;
        final active = index == currentStep;

        return Column(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: completed || active
                  ? Colors.blue
                  : Colors.grey.shade300,
              child: completed
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: active ? Colors.white : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
            ),
            const SizedBox(height: 6),
            Text(
              steps[index],
              style: TextStyle(
                fontSize: 12,
                color: active ? Colors.black : Colors.grey,
              ),
            ),
          ],
        );
      }),
    );
  }
}






Widget _applePayTile() {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: _radioHeader('Apple Pay', false),
  );
}

Widget _radioHeader(String title, bool selected) {
  return Row(
    children: [
      Icon(
        selected ? Icons.radio_button_checked : Icons.radio_button_off,
        color: selected ? Colors.blue : Colors.grey,
      ),
      const SizedBox(width: 8),
      Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
    ],
  );
}
