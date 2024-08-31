import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home_page",
          ),
        ),
        body: Center(child: Text("HI Welcome to my Theme App")),
      ),
    );
  }
}
