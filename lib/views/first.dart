import 'package:flutter/material.dart';
import 'package:untitled3/views/second.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First_page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: InkWell(
            child: const Icon(Icons.arrow_forward_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const second_page()),
              );
            },
          ),
        ),
      ),
    ));
  }
}
