import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/components/custom_Button.dart';
import 'package:prototyping_kit/screens/e-commerce/checkout_screen.dart';
import 'package:prototyping_kit/screens/e-commerce/components/cart_item.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Bag'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(),
            CartItem(),
            CustomButton(
              title: "Checkout",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CheckoutScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
