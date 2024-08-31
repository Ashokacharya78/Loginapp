import 'package:flutter/material.dart';
import 'package:untitled3/column_row.dart';

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY_APP',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(
            title: const Text("MY_APP"),
            backgroundColor: Colors.blueGrey,
          ),
          body: const MyAppse(),
        ),
      ),
    );
  }
}

class Action {
  final String image;
  final String title;
  final String subtitle;

  Action({required this.image, required this.title, required this.subtitle});
  @override
  String toString() {
    // TODO: implement toString
    return "$title ($subtitle)";
  }
}

List actions = [
  Action(
      image:
          'https://th.bing.com/th?q=Profile+Black%2fColor&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-US&cc=US&setlang=en&adlt=strict&t=1&mw=247',
      title: 'My profile',
      subtitle: 'Edit profile'),
  Action(
      image:
          'https://th.bing.com/th?id=OIP.GHGGLYe7gDfZUzF_tElxiQHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
      title: 'past orders',
      subtitle: 'view your past orders'),
  Action(
      image:
          'https://th.bing.com/th/id/OIP.JcSNjScUDPJ2CKSgo7STFwHaHa?w=183&h=183&c=7&r=0&o=5&pid=1.7',
      title: 'Account setting',
      subtitle: 'Edit your account setting'),
  Action(
      image:
          'https://th.bing.com/th/id/OIP.7qqke4QbnJEpDfd-SUF52gHaF_?rs=1&pid=ImgDetMain',
      title: 'About',
      subtitle: 'learn about us'),
  Action(
      image:
          'https://th.bing.com/th/id/OIP.HkcOMx2hJvVQYDhhKCsWIwAAAA?w=190&h=199&c=7&r=0&o=5&pid=1.7',
      title: 'Share',
      subtitle: 'Like Us?'),
  Action(
      image:
          'https://th.bing.com/th/id/OIP.VU6OJERkW29SfnwNfrOIGAHaFo?rs=1&pid=ImgDetMain',
      title: 'Contact Us',
      subtitle: 'Have Query?'),
];

class MyAppse extends StatelessWidget {
  const MyAppse({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: actions.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.amberAccent,
          elevation: 5,
          margin: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(actions[index].image),
            ),
            title: Text(actions[index].title),
            subtitle: Text(actions[index].subtitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyAppf()));
            },
          ),
        );
      },
    );
  }
}
