import 'package:flutter/material.dart';
import 'package:untitled3/First_App/listborder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.cyan,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.redAccent,
                  Colors.blue,
                ],
                begin: Alignment.topRight,
                end: Alignment.topLeft,
              )),
              padding: EdgeInsets.only(top: 30, left: 20),
              child: const Text(
                "Hello \n sign up!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 200),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20.0,
                        offset: Offset(0.0, 0.95))
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                labelText: "Email_ID",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              )),
                        ),
                        Container(
                          height: 30,
                        ),
                        Container(
                          child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            child: Text(
                              'SUBMIT',
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.deepOrange),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const MyApps()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
