import 'dart:async';
import 'dart:io';
void main(){
  File file1 = new File("C:\\Users\\2195270\\Downloads\\names.txt");
  Future<String> fs = file1.readAsString();

  fs.then((data) => print(data));
  
  print("End of main");
}
