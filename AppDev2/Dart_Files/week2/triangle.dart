import 'dart:io';

void main(){

  // stdout.write('*');
  // stdout.writeln('*');
  // stdout.write('*');


  for(var i = 1; i<=5;i++){
    for(var j = 1; j<=i;j++){
      stdout.write('*');
    }
    stdout.writeln();
  }

  //

  String s = "******";
  for(var j=0; j <s.length; j++){
    print(s.substring(0,j));
  }
}