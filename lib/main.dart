import 'package:dailydo/misc/pallete.dart';
import 'package:dailydo/screens/home_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'Rex AI',
      theme: ThemeData.light(useMaterial3: true).copyWith
      (scaffoldBackgroundColor: Pallete.screenBackground),
      
      home: const HomeScreen()
    );
  }
}
