import 'package:flutter/material.dart';

//void main() => runApp(const ListViewBuilder());
void main() => runApp(const MaterialApp(home: ListViewBuilder()));

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOCIAL FAMILY'),
        backgroundColor: Colors.blueGrey,
        // titleTextStyle: const TextStyle(Colors.yellow),
      ),
      body: ListView.builder(
          itemCount: customers
              .length, //s is used to scroll in horizontal but width has to set
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  customers[index].image,
                ),
              ),
              title: Text(customers[index].name),
              subtitle: Text(customers[index].profession),
            );
          }),
    );
  }
}

class User {
  final String name;
  final String image;
  final String profession;

  User(
    this.name,
    this.profession,
    this.image,
  );
}

List customers = [
  User('Abdul', 'scientist',
      'https://www.bing.com/images/search?view=detailV2&ccid=aIsDXMgG&id=7FF0A4225A7A0AD8AE9FE0D86BA9AB56384DCE66&thid=OIP.aIsDXMgGQvyWKlYexhu9EQHaE8&mediaurl=https%3a%2f%2fdeveloper.apple.com%2flibrary%2farchive%2fdocumentation%2fGraphicsImaging%2fConceptual%2fCoreImaging%2fart%2fface_detection_2x.png&exph=576&expw=864&q=people+detected+&simid=608040217347369811&FORM=IRPRST&ck=B91537B269F1D862C758155FB7331D3C&selectedIndex=15&itb=0'),
  User('Akbar', 'king',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('Rolls royce', 'Car dec', ''),
  User('Naratha', 'teacher',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('sonia das', 'Lecture',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('rose ', 'teacher',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('naveen++', 'student',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('Shalini&', 'Student',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('Rakshitha%', 'cs Student',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('(Vishnu)', 'Maths Student',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
  User('_Madhan_', 'vedio dec',
      'https://th.bing.com/th/id/OIP.ZJEVgzKVI_nxalDaZ6NN3gHaJQ?rs=1&pid=ImgDetMain'),
];
