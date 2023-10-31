import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.purple),
      title: 'My Profile Page',
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});


  @override
  State<MyProfilePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyProfilePage> {

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://upload.wikimedia.org/wikipedia/commons/5/5f/Dolfga_Icon.png', scale: 4),
            const Text('Nabil Ramadan',  style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,  fontFamily: 'RobotoMono' ) ),
            const Text('ios & Android Developer',  style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,  ) ),
            const Text('_____________________',  style: TextStyle(fontSize: 20, color: Colors.white,   ) ),
            Container(
              margin: EdgeInsets.only(top:20),
              height:50,
              width:300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: <Widget>[
                  const Text('\t\t\t\t'),
                  Icon(Icons.phone, color: Colors.deepPurpleAccent,),
                  const Text('\t\t\t+514 123 4567', style: TextStyle(fontSize: 23, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold   ) ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:20),
              height:50,
              width:300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: <Widget>[
                  const Text('\t\t\t\t'),
                  Icon(Icons.mail, color: Colors.deepPurpleAccent,),
                  const Text('\t\t\tNabilr619@gmail.com', style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold   ) ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:20),
              height:50,
              width:300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 2,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: <Widget>[
                  const Text('\t'),
                  Icon(Icons.person_pin_circle, size: 40, color: Colors.deepPurpleAccent,),
                  const Text('\t\tNabilr619@gmail.com', style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold   ) ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
