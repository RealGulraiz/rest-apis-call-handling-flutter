import 'package:flutter/material.dart';
import 'package:restapis_bootcamp/example_five.dart';
import 'package:restapis_bootcamp/example_four.dart';
import 'package:restapis_bootcamp/example_three.dart';
import 'package:restapis_bootcamp/example_two.dart';
import 'package:restapis_bootcamp/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
