import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  final TextEditingController _textEditiorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Editor Example'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _textEditiorController,
                  decoration: InputDecoration(labelText: 'Enter the username'),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  String enteredText = _textEditiorController.text;
                  print('Entered text : $enteredText');

                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(data: enteredText)),
                  );
                }, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  final String data;
  SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from First Screen : $data'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Back to First Screen'))
          ],
        ),
      ),
    );
  }
}