import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              _buildHeader(context),
              SizedBox(height: 20.h),
              _buildCategoryChips(),
              SizedBox(height: 30.h),
              _buildSectionHeader("Near you"),
              _buildHorizontalEventList(),
              SizedBox(height: 30.h),
              _buildSectionHeader("Your events"),
              _buildVerticalEventList(context),
              SizedBox(height: 30.h),
              _buildSectionHeader("Selling out"),
              _buildHorizontalEventList(), // Reusing the same horizontal widget
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Icon(Icons.search, size: 28.sp, color: Theme.of(context).textTheme.bodyMedium?.color);
  }

  Widget _buildCategoryChips() {
    final categories = ["ALL EVENTS", "CONCERTS", "TECHNOLOGY", "SPORTS"];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((cat) {
          bool isSelected = cat == "CONCERTS";
          return Container(
            margin: EdgeInsets.only(right: 10.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : AppColors.primaryMuted,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              cat,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.primary,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          Text("See more", style: TextStyle(fontSize: 14.sp, color: AppColors.primary)),
        ],
      ),
    );
  }

  Widget _buildHorizontalEventList() {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          width: 200.w,
          margin: EdgeInsets.only(right: 15.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryMuted,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
                    ),
                    child: Center(child: Icon(Icons.image, color: AppColors.primaryDark)),
                  ),
                  Positioned(
                    top: 10.h, right: 10.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(8.r)),
                      child: Text("MAR 05", style: TextStyle(color: Colors.white, fontSize: 10.sp)),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Maroon 5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                  Text("Recife, Brazil", style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 10.h),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 36.h),
                      side: BorderSide(color: AppColors.primary),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                    ),
                    child: Text("Buy tickets", style: TextStyle(color: AppColors.primary)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalEventList(BuildContext context ) {
    return Column(
      children: List.generate(2, (index) => Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            Container(
              width: 50.w, height: 50.h,
              decoration: BoxDecoration(color: AppColors.primaryMuted, borderRadius: BorderRadius.circular(8.r)),
              child: Icon(Icons.image, color: AppColors.primaryDark),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alicia Keys", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Olinda, Brazil", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: AppColors.primary),
          ],
        ),
      )),
    );
  }
}