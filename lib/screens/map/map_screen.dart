import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';

class MapListingPage extends StatefulWidget {
  @override
  _MapListingPageState createState() => _MapListingPageState();
}

class _MapListingPageState extends State<MapListingPage> {
  // Initial camera position (Recife, Brazil)
  static final CameraPosition _kRecife = CameraPosition(
    target: LatLng(-8.0476, -34.8770),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Google Map Layer
          GoogleMap(
            initialCameraPosition: _kRecife,
            markers: _buildMarkers(),
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
          ),
          
          // 2. The Header Overlay (Back button & Search Info)
          _buildTopOverlay(),

          // 3. The Property Card (Bottom Overlay)
          _buildPropertyCard(),
        ],
      ),
    );
  }

  Set<Marker> _buildMarkers() {
    // In a real app, these would come from your API
    return {
      Marker(
        markerId: MarkerId('1'),
        position: LatLng(-8.0500, -34.8800),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      ),
      // Add more markers here...
    };
  }

  Widget _buildTopOverlay() {
    return Positioned(
      top: 40.h,
      left: 15.w,
      right: 15.w,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: AppColors.primary, size: 18.sp),
              onPressed: () => Navigator.pop(context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Recife", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                Text("Mar 12 - Mar 15", style: TextStyle(fontSize: 11.sp)),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Text("291 results", style: TextStyle(fontSize: 12.sp)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyCard() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 5)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image Placeholder with Indicator dots
            _buildImageSlider(),
            SizedBox(height: 12.h),
            _buildPropertyDetails(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSlider() {
    return Column(
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryMuted,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Icon(Icons.image, color: AppColors.primary.withOpacity(0.3), size: 40.sp),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            width: index == 1 ? 8.w : 5.w,
            height: 5.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 1 ? AppColors.primary : Colors.grey[300],
            ),
          )),
        )
      ],
    );
  }
  
  // Re-use the _buildPropertyDetails and _buildHostInfo from the previous response here
}