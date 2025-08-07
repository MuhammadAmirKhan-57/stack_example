import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Stack Screen'),
        backgroundColor: Colors.indigo.shade200,
      ),
    );
  }
}