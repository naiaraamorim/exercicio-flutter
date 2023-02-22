import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Programa Hello Word',
      home: Scaffold(
        body: Center(
          child: Text('Hello World!', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
