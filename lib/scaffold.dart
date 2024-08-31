import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'simple scaffold',
      home: Scaffold(
        body: Center(
          child: Text("Welcome to my page",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontFamily: AutofillHints.familyName),
              textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}
