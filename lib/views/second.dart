import 'package:flutter/material.dart';
import 'package:untitled3/views/first.dart';

class second_page extends StatelessWidget {
  const second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second_page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (_) => const MyApp()),
              );
            },
          ),
        ),
      ),
    );
  }
}
