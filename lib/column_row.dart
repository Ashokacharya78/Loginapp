import 'package:flutter/material.dart';

class MyAppf extends StatelessWidget {
  const MyAppf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Column_Row"),
            backgroundColor: Colors.pinkAccent,
          ),
          body: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.lightBlue,
                    child: const Text("Blue"),
                    alignment: Alignment.center,
                  )),
              Expanded(
                  flex: 4,
                  child: Row(children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: const Text("red"),
                        )),
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  color: Colors.lightGreenAccent,
                                  alignment: Alignment.center,
                                  child: const Text("yellow"),
                                ),
                                flex: 2),
                            Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  color: Colors.lightBlueAccent,
                                  alignment: Alignment.center,
                                  child: const Text("yellow"),
                                ),
                                flex: 8)
                          ],
                        ))
                  ])),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.orangeAccent,
                    child: const Text("orange"),
                    alignment: Alignment.center,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
