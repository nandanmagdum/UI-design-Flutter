import 'package:flutter/material.dart';
import 'package:untitled/screens/get_started.dart';
import 'package:untitled/screens/home_screen.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      // home: GetStartedScreen(),
      home: HomeScreen(),
    );
  }
}
