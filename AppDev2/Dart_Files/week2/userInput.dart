import 'dart:io';

void main(){
  print('Enter x');
  var x = double.parse(stdin.readLineSync()!);
  print('Enter y');
  var y = double.parse(stdin.readLineSync()!);

  var sum = x+y;
  print('sum = $sum');
  var average = sum /2;

  print('Average = $average');

}