import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Capitol Home"),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text(
          "Welcome to Capitol App!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
.
