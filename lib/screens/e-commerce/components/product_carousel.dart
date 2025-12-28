import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/e-commerce/product_details_screen.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
            },
            child: Container(
              height: 190.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.r),
                  topLeft: Radius.circular(12.r),
                ),
                color: AppColors.primaryMuted,
              ),
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primarySoft,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12.r),
                        topLeft: Radius.circular(12.r),
                      ),
                    ),
                    width: 200.w,
                    height: 120.h,
                    child: Center(child: Icon(Icons.image)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Amazing T-shirt',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: const Text('€ 12.99'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Container(
            height: 190.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
              ),
              color: AppColors.primaryMuted,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primarySoft,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      topLeft: Radius.circular(12.r),
                    ),
                  ),
                  width: 200.w,
                  height: 120.h,
                  child: Center(child: Icon(Icons.image)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Amazing T-shirt',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: const Text('€ 12.99'),
                ),
              ],
            ),
          ),
          SizedBox(width: 12.w),

          Container(
            height: 190.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
              ),
              color: AppColors.primaryMuted,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primarySoft,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      topLeft: Radius.circular(12.r),
                    ),
                  ),
                  width: 200.w,
                  height: 120.h,
                  child: Center(child: Icon(Icons.image)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Amazing T-shirt',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: const Text('€ 12.99'),
                ),
              ],
            ),
          ),
          SizedBox(width: 12.w),

          Container(
            height: 190.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.r),
                topLeft: Radius.circular(12.r),
              ),
              color: AppColors.primaryMuted,
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primarySoft,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      topLeft: Radius.circular(12.r),
                    ),
                  ),
                  width: 200.w,
                  height: 120.h,
                  child: Center(child: Icon(Icons.image)),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Amazing T-shirt',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: const Text('€ 12.99'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
