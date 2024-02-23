import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return const Scaffold(
      body: GradientContainer(
        colors: [
          Color.fromARGB(255, 119, 25, 192),
          Color.fromARGB(255, 161, 128, 185),
          Color.fromARGB(255, 229, 213, 240),
        ],
      ),
    );
  }
}
