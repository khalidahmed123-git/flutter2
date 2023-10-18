import 'package:flutter/material.dart';
import 'package:studi/math.dart';
import 'package:studi/note.dart';
import 'package:studi/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Math(),
    );
  }
}