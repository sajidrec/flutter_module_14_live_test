import 'package:flutter/material.dart';
import 'package:flutter_moduel_14_livetest/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 3,
        ),
      ),
      home: const HomePage(),
    );
  }
}
