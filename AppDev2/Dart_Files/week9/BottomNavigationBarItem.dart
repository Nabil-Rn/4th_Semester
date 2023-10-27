/**/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text("Home page", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ),),
    Text("Search page", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ),),
    Text("Profile page", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ),),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BottomNavigation Bar"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home",
              backgroundColor:  Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: "Search",
              backgroundColor:  Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor:  Colors.green),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 6,
      ),
    );
  }
}
/*
*/

/*
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Users> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/Users'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Users.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Users> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Users>(
            future: futureUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.name);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}


class Users {
  Users({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"],
    website: json["website"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "address": address!.toJson(),
    "phone": phone,
    "website": website,
    "company": company!.toJson(),
  };
}

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    suite: json["suite"],
    city: json["city"],
    zipcode: json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street,
    "suite": suite,
    "city": city,
    "zipcode": zipcode,
    "geo": geo!.toJson(),
  };
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String? lat;
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  String? name;
  String? catchPhrase;
  String? bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"],
    catchPhrase: json["catchPhrase"],
    bs: json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}
*/





/*

  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(

      );
    }
  }

  class CounterPage extends StatefulWidget {
    const CounterPage({super.key});

    @override
    State<CounterPage> createState() => _CounterPageState();
  }

  class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  void _showResetSnackBar(){
    final snackBar = SnackBar(content:
    Text("Counter Reset to 0."));
    _scaffoldKey.currentState?.showSnackBar(snackBar);
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter Value",
              style: TextStyle(
                fontSize: 20,
              ),
              ),SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: _incrementCounter,
                  child:Text("Increment")),
              ElevatedButton(onPressed: (){
                _resetCounter();
                _showResetSnackBar();
              }, child: Text("Reset Counter"))
            ],
          ),
        ),
      );
    }
  }

*/













/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({super.key});
  static const String _title = "Demo GlobalKey";
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: _title,
       home: ScaffoldMessenger(
         key: GlobalKey<ScaffoldMessengerState>(),
         child: Scaffold(
           appBar: AppBar(title: Text(_title),),
           body: LoginPage(),
         ),
       ),
     );
   }
 }



 class LoginPage extends StatefulWidget {
   const LoginPage({super.key});

   @override
   State<LoginPage> createState() => _LoginPageState();
 }

 class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void showLoginFailedSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed, kindly check your password"))
    );

  }
  void showEmptyUserSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter info"))
    );

  }

   @override

   Widget build(BuildContext context) {
     return Padding(padding: EdgeInsets.all((10)),
     child: ListView(
       children: [
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.all(10),
           child: Text(
             "Login Demo with Global Key",
             style: TextStyle(
               color: Colors.blue,
               fontWeight: FontWeight.w500,
               fontSize: 30,
             ),
           ),
         ),
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.all(10),
           child: Text(
             "Sign in",
             style: TextStyle(
               fontSize: 20,
             ),
           ),
         ),
         Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username"
            ),
          ),
         ),
         Container(
           padding: EdgeInsets.all(10),
           child: TextField(
             obscureText: true,
             controller: passwordController,
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Password"
             ),
           ),
         ),
         TextButton(onPressed: (){

         }, child: Text("Forgot Password")),
         Container(
           height: 50,
           padding: EdgeInsets.all(10),
           child: ElevatedButton(
             child: Text("Login"),
             onPressed: (){
               final login = nameController.text; //retrieve the value on the field
               final password = passwordController.text;

               if(login.trim() == ""){
                 showEmptyUserSnackBar();
               }else {
                 if (password == "123") {
                   Navigator.push(context,
                       MaterialPageRoute(
                         builder: (context) => SecondScreen(login, password),));
                 } else {
                   showLoginFailedSnackBar();
                 }
               }
             },



           ),
         )
       ],
     ));
   }
 }


  class SecondScreen extends StatefulWidget {
  final String login;
  final String password;
    const SecondScreen(this.login,this.password,{super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Second Screen"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login : ${widget.login}"),
              Text("Password : ${widget.password}")
            ],
          ),
        ),
      );
    }
}
*/






























// import 'dart:io';
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
//   class MyApp extends StatelessWidget {
//     const MyApp({super.key});
//
//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//         initialRoute: "/",
//         routes: {
//           "/": (context) => FirstScreen(),
//           "/second" : (context) => SecondScreen(),
//
//         },
//       );
//     }
//   }
//
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key});
//
//   @override
//   State<MyCustomForm> createState() => _MyCustomFormState();
// }
//
// // Define a corresponding State class.
// // This class holds the data related to the Form.
// class _MyCustomFormState extends State<MyCustomForm> {
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final myController = TextEditingController();
//
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     myController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: myController,
//     );
//   }
// }
//
// //////////////////////////////////////////////////////////////
//   class FirstScreen extends StatefulWidget {
//      FirstScreen({super.key});
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// final myController = TextEditingController();
//
// @override
// void dispose() {
//   // Clean up the controller when the widget is disposed.
//   myController.dispose();
//   super.dispose();
// }
//
//
// class _FirstScreenState extends State<FirstScreen> {
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("First Screen"),
//         ),
//         body: Center(
//
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//
//           children:[
//                 TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Username"
//                   ),
//                 ),
//             TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: "Password"
//               ),
//             ),
//             ElevatedButton(
//             onPressed: (){
//               Navigator.pushNamed(context, "/second", arguments: "named Routing Data");
//             }, child: Text("Login"),
//           ),
//
//
//           ]
//          ),
//         ),
//       );
//     }
// }
//
// class SecondScreen extends StatelessWidget {
//
//     @override
//     Widget build(BuildContext context) {
//       RouteSettings? settings = ModalRoute.of(context)?.settings;
//       final String? data = settings?.arguments as String?;
//       //final String? data = ModalRoute.of(context)?.settings.arguments as String?;
//
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("Second Screen"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Data from the first screen : $data"),
//               ElevatedButton(
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                   child: Text("Back to first screen"))
//             ],
//           )
//         ),
//       );
//     }
//   }
//



//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirstScreen(),
//     );
//   }
// }
//
//
// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("First Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             Navigator.push(context,
//                 MaterialPageRoute(builder:
//                 (context) => SecondScreen(data: "Simple routing data")),
//             );
//           },
//           child: Text("Go to second screen"),
//         ),
//       ),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   // const SecondScreen({super.key});
//  final String data;
//  SecondScreen({required this.data});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Data from the first screen : $data"),
//             ElevatedButton(
//                 onPressed: (){
//                   Navigator.pop(context);
//                 },
//                 child: Text("Back to first screen"))
//           ],
//         )
//       ),
//     );
//   }
// }
