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
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              const Text(
                'Stack Example',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),

    );
  }
}