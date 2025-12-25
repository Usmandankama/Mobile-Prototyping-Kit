import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: AppColors.primaryMuted,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(child: Icon(Icons.image)),
            ),
            SizedBox(width: 16.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Amazing T Shirt"),
                Text("Black / M"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: AppColors.primaryMuted,
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Center(child: Icon(Icons.minimize_rounded)),
                        ),
                        Text("20"),
                        Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: AppColors.primaryMuted,
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Center(child: Icon(Icons.add)),
                        ),
                      ],
                    ),
                    Text('\$24.99'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
