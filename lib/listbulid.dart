import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ListViewTest()));

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ViewLists')),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
