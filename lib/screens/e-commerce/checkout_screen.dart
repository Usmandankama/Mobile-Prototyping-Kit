import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/components/custom_Button.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int currentStep = 2; // 0=Bag, 1=Shipping, 2=Payment, 3=Review
  int selectedCard = 0;
  bool billingSame = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {}, child: const Text('Cancel')),
        centerTitle: true,
        title: const Text('Checkout', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _checkoutSteps(),

            const SizedBox(height: 24),

            const Text(
              'Choose a payment method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            Text(
              "You won't be charged until you review the order on the next page",
              style: TextStyle(color: Colors.grey.shade600),
            ),

            const SizedBox(height: 16),

            _creditCardSection(),

            const SizedBox(height: 12),

            _applePaySection(),

            const Spacer(),

            CustomButton(title: 'Continue', onPressed: () {  },),
            SizedBox(height: 16.h,)
          ],
        ),
      ),
    );
  }

  // ================= STEPS =================

  Widget _checkoutSteps() {
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
                  ? AppColors.primary
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

  // ================= CREDIT CARD =================

  Widget _creditCardSection() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _radioHeader('Credit Card', true),

          const SizedBox(height: 12),

          _cardTile(
            title: 'Mastercard',
            number: 'XXXX XXXX XXXX 1234',
            index: 0,
          ),
          const SizedBox(height: 10),
          _cardTile(title: 'Visa', number: 'XXXX XXXX XXXX 9876', index: 1),

          const SizedBox(height: 12),

          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Add new card'),
          ),

          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            value: billingSame,
            onChanged: (v) => setState(() => billingSame = v!),
            title: const Text(
              'My billing address is the same as my shipping address',
              style: TextStyle(fontSize: 13),
            ),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ],
      ),
    );
  }

  Widget _cardTile({
    required String title,
    required String number,
    required int index,
  }) {
    final selected = selectedCard == index;

    return GestureDetector(
      onTap: () => setState(() => selectedCard = index),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryMuted : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? AppColors.primary : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(number, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            if (selected) const Icon(Icons.check, color: AppColors.primary),
          ],
        ),
      ),
    );
  }

  // ================= APPLE PAY =================

  Widget _applePaySection() {
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
          color: selected ? AppColors.primary : Colors.grey,
        ),
        const SizedBox(width: 8),
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }

  // ================= CONTINUE BUTTON =================
}
