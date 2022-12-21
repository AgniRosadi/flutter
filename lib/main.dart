import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gazesport/auth/widget_tree.dart';
import 'package:gazesport/main/main_screen.dart';
// import 'package:gazesport/screens/welcome.dart';
import 'package:gazesport/screens/wrapper.dart';

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
      title: 'GAZ E-Sport',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MainScreen(),
    );
  }
}
