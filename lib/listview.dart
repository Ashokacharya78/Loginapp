import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ListViewTest()));

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('ViewLists'),
            backgroundColor: Colors.yellowAccent),
        body: ListView(
          reverse: false, //{this is used to make the scroll reverse at top
          scrollDirection: Axis.vertical,
          //scrollDirection: Axis.horizontal, this is used to scroll in horizontal but width has to set
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              height: 250,
              color: Colors.green,
            ),
            Container(
              height: 250,
              color: Colors.blue,
            ),
            Container(height: 250, color: Colors.orange),
            Container(height: 250, color: Colors.pink),
            Container(height: 250, color: Colors.yellow),
            Container(height: 250, color: Colors.lightBlue),
          ],
        ),
      ),
    );
  }
}
