import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Demo GlobalKey';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

    );
  }
}




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Sign in'),
        ),
      ),

      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: 'User Name'),
          ),
        ),

      Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: passwordController,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'Password'),
        ),
      ),

      TextButton(onPressed: () {}, child: Text('Forgot Password')),
      Container(
        height: 50,
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: 'User Name'),
        ),
      ),

      ),
    );
  }
}




class SecondScreen extends StatelessWidget {
  final String login;
  final String password;
  const SecondScreen(this.login, this.password, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login : $login'),
            Text(('Password : $password'))
          ],
        ),
      ),
    );
  }
}
