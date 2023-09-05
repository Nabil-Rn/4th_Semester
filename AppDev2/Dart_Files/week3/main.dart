import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Pic Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyPicDemo(),
    );
  }
}

/*class MyPicDemo extends StatelessWidget {
 const MyPicDemo({super.key});

 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('AxisDemo'),),
 body: Row(
 crossAxisAlignment: CrossAxisAlignment.center,
 children: [
 Expanded(child:Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg")),
 ),
 Expanded(child:Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg")),
 ),
 Expanded(child:Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg")),
 ),
 ],
 ),

 );
 }
}
*/

class MyPicDemo extends StatelessWidget {
  MyPicDemo({super.key});

  // static is used to call the variable ref directly in other function
  static var stars = const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green,),
        Icon(Icons.star, color: Colors.green,),
        Icon(Icons.star, color: Colors.green,),
        Icon(Icons.star, color: Colors.red,),
        Icon(Icons.star, color: Colors.red,),
      ]
  );

  static final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text(
          '170 reviews',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              fontSize: 20
          ),
        ),
      ],
    ),
  );

  static const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2
  );
  // defaulttextStyle.merge allows you to create a default text
  // style that is inherited by its child from all subsequent children
  static final IconList = DefaultTextStyle.merge(
      style: descTextStyle ,
      child: Container(
        padding: EdgeInsets.all(20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green,),
                Text('PREP'),
                Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green,),
                Text('COOK'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green,),
                Text('FEEDS'),
                Text('4-6'),
              ],
            ),

          ],
        ),

      ));

  static final titleText = Container(
    child: Text('Dolphin', style: descTextStyle,),
  );

  static final subTitle = Container(
    child: Text('Dolphin are cool and smart animals,'
        'people has been eating dolphins for the past years'
        'Not all of people has tested dolphins so here is my'
        'recipe for the perfect dolphin meal', softWrap: true,),
  );

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: [
        titleText,
        subTitle,
        ratings,
        IconList,
      ],

    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Star Demo'),),
        body: Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    child: leftColumn,
                  )
                ],
              ),
            ),
          ),
        )

    );
  }
}