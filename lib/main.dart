import 'package:flutter/material.dart';
import 'package:learning01/screens/loading.dart';
import 'package:learning01/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "learning app",
      home: loadingScreen(),
    );
  }
}
