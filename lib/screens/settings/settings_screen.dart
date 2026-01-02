import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/themes/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            _buildProfileHeader(context),
            SizedBox(height: 30.h),
            _buildSettingsSection(context, "Account", [
              _settingsTile(context, Icons.person_outline, "Personal Information"),
              _settingsTile(context, Icons.security, "Security"),
              _settingsTile(context, Icons.notifications_none, "Notifications"),
            ]),
            SizedBox(height: 20.h),
            _buildSettingsSection(context, "Preferences", [
              _settingsTile(context, Icons.language, "Language", trailing: "English"),
              _settingsTile(
                context,
                Icons.dark_mode_outlined,
                "Dark Mode",
                isSwitch: true,
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundColor: AppColors.primaryMuted,
          child: Icon(Icons.person, size: 50.sp, color: AppColors.primary),
        ),
        SizedBox(height: 15.h),
        Text(
          "John Doe",
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          "john.doe@example.com",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildSettingsSection(
    BuildContext context,
    String title,
    List<Widget> tiles,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(children: tiles),
        ),
      ],
    );
  }

  Widget _settingsTile(
    BuildContext context,
    IconData icon,
    String label, {
    String? trailing,
    bool isSwitch = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary, size: 24.sp),
      title: Text(label, style: TextStyle(fontSize: 16.sp)),
      trailing: isSwitch
          ? Switch(
              value: false,
              onChanged: (v) {},
              activeColor: AppColors.primary,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (trailing != null)
                  Text(trailing, style: Theme.of(context).textTheme.bodyMedium),
                Icon(Icons.chevron_right, size: 20.sp),
              ],
            ),
    );
  }
}
