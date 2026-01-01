import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

import '../components/custom_button.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  int selectedRating = 4; // default 4 stars
  final TextEditingController _textController = TextEditingController();

  final List<String> likedTags = [
    "EASY TO USE",
    "COMPLETE",
    "HELPFUL",
    "CONVENIENT",
    "LOOKS GOOD",
  ];
  final List<String> improvedTags = [
    "COULD HAVE MORE COMPONENTS",
    "COMPLEX",
    "NOT INTERACTIVE",
    "ONLY ENGLISH",
  ];

  final Set<String> selectedLikedTags = {};
  final Set<String> selectedImprovedTags = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feedback", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your project is finished.",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Text(
                "How would you rate the prototyping kit?",
                style: TextStyle(fontSize: 16.sp, color: Colors.grey[700]),
              ),
              SizedBox(height: 15.h),
              Row(
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      index < selectedRating ? Icons.star : Icons.star_border,
                      color: AppColors.primary,
                      size: 30.sp,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedRating = index + 1;
                      });
                    },
                  );
                }),
              ),
              SizedBox(height: 20.h),
              Text(
                "What did you like about it?",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.h),
              Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: likedTags.map((tag) {
                  bool isSelected = selectedLikedTags.contains(tag);
                  return ChoiceChip(
                    label: Text(tag),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          selectedLikedTags.add(tag);
                        } else {
                          selectedLikedTags.remove(tag);
                        }
                      });
                    },
                    selectedColor: AppColors.primary,
                    backgroundColor: AppColors.primaryMuted,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 14.sp,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.h),
              Text(
                "What could be improved?",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.h),
              Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: improvedTags.map((tag) {
                  bool isSelected = selectedImprovedTags.contains(tag);
                  return ChoiceChip(
                    label: Text(tag),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          selectedImprovedTags.add(tag);
                        } else {
                          selectedImprovedTags.remove(tag);
                        }
                      });
                    },
                    selectedColor: AppColors.primary,
                    backgroundColor: AppColors.primaryMuted,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 14.sp,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.h),
              Text(
                "Anything else?",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10.h),
              TextField(
                controller: _textController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Tell us everything.",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              CustomButton(
                title: "Submit Feedback",
                onPressed: () {
                  // Handle feedback submission
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
