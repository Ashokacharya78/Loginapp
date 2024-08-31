import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text(
            "apple",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          color: Colors.lightBlueAccent,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("orange",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.lightGreenAccent,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("banana",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.yellow,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("grapes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.lightBlue,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("Straberry",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.pinkAccent,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("blueberry",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.grey,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("Cucumber",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: const Text("Soya",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          color: Colors.green,
        )
      ],
    );
  }
}
