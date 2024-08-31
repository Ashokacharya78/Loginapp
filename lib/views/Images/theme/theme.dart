import 'package:flutter/material.dart';
import 'package:untitled3/views/Images/theme/Home.dart';
import 'package:untitled3/views/Images/theme/dark_theme.dart';

void main() => runApp(MaterialApp(
    theme: Themeapp.lighTheme,
    darkTheme: Themeapp.darkTheme,
    themeMode: ThemeMode.system,
    home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Theme_Color"),
            backgroundColor: Colors.redAccent,
            leading: const CircleAvatar(
              child: Icon(
                Icons.brush,
                size: 30,
              ),
              backgroundColor: Colors.blueAccent,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_forward_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const home_page()),
              );
            },
          ),
          body: ListView(
            children: [
              const Text(
                "Theme of the app",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Text(
                "Sample app",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "press to change",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Outlined button"))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 225,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5),
                        image: const DecorationImage(
                          image: AssetImage('assets/spyder.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
