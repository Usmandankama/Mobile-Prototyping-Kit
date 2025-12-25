import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/e-commerce/cart_screen.dart';
import 'package:prototyping_kit/screens/e-commerce/components/product_carousel.dart';
import 'package:prototyping_kit/screens/e-commerce/product_details_screen.dart';
import 'package:prototyping_kit/themes/app_colors.dart';
import 'package:prototyping_kit/themes/app_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EcommerceHomeScreen extends StatelessWidget {
  const EcommerceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Icon(AppIcons.search(context)),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),

          IconButton(
            icon: Icon(AppIcons.cart(context)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 215.h,
              width: 375.w,
              color: AppColors.primaryMuted,
              child: Stack(
                children: [
                  Positioned(
                    top: 200.h,
                    left: 165.w,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: SlideEffect(
                        spacing: 5.w,
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                        dotColor: AppColors.gray300,
                        activeDotColor: AppColors.primary,
                      ),
                    ),
                  ),
                  PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Expanded(child: Center(child: Icon(Icons.image))),
                      Expanded(child: Center(child: Icon(Icons.car_crash))),
                      Expanded(child: Center(child: Icon(Icons.access_alarm))),
                      Expanded(child: Center(child: Icon(Icons.abc_rounded))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Perfect for you',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(height: 220.h, child: ProductCarousel()),
            SizedBox(height: 8.h),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'For this summer',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(height: 220.h, child: ProductCarousel()),
          ],
        ),
      ),
    );
  }
}
