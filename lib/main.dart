import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prototyping_kit/screens/auth/login_screen.dart';
import 'package:prototyping_kit/screens/auth/otp_screen.dart';
import 'package:prototyping_kit/screens/auth/signup_screen.dart';
import 'package:prototyping_kit/screens/chat/chats_screen.dart';
import 'package:prototyping_kit/screens/chat/messages_screen.dart';
import 'package:prototyping_kit/screens/e-commerce/ecommerce_home_screen.dart';
import 'package:prototyping_kit/screens/subscription/substription_screen.dart';
import 'package:prototyping_kit/themes/theme_resolver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeResolver.light(),
          darkTheme: ThemeResolver.dark(),
          themeMode: ThemeMode.system,
          // home: LoginScreen(),
          // home: SignupScreen(),
          // home: OtpScreen(),
          // home: SubscriptionScreen(),
          // home: ChatsScreen(),
          // home: MessagesScreen(),
          home: EcommerceHomeScreen(),
        );
      },
    );
  }
}
