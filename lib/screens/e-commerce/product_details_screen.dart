import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/components/custom_button.dart';
import 'package:prototyping_kit/screens/e-commerce/cart_screen.dart';
import 'package:prototyping_kit/screens/e-commerce/checkout_screen.dart';
import 'package:prototyping_kit/screens/e-commerce/components/color_selector.dart';
import 'package:prototyping_kit/screens/e-commerce/components/size_selector.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(child: Icon(Icons.image, size: 80)),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Amazing T-shirt',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),

                  const Text('€ 12.99'),
                  const SizedBox(height: 16),

                  const Text(
                    'TThe perfect T-shirt for when you want to feel comfortable but still stylish. Amazing for all ocasions. Made of 100% cotton fabric in four colours. Its modern style gives a lighter look to the outfit. Perfect for the warmest days.',
                  ),

                  const SizedBox(height: 24),
                  SizeSelector(),
                  const SizedBox(height: 8),

                  ColorSelector(),
                ],
              ),
            ),
          ),

          CustomButton(
            title: 'Add to bag',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            },
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
