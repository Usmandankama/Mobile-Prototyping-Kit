import 'package:flutter/material.dart';
import 'package:prototyping_kit/screens/feedback/feedback_screen.dart';
import 'package:prototyping_kit/themes/them_resolver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeResolver.light(),
      darkTheme: ThemeResolver.dark(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: Text('Hello World'),
      ),
    );
  }
}
