import 'package:flutter/material.dart';
import 'package:stack_example/stack_example/proper_stack_example.dart';
import 'package:stack_example/stack_example/stack_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackWithImage(),
    );
  }
}