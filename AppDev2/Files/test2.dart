

void main(){

  var name = "bob";
  var roll_nom = 24;

  var heart = "\u2665";
  var laugh = "\u{1f600}";

  final final_name = "Dolphins";

  var n1 = 10, n2 = 5;


  print("Hello ${name} ! my roll num is ${roll_nom} ${laugh} ${heart} ${laugh}\n");

  print( final_name + " are cool!\n");

  print("n1+n2 = ${n1+n2}");
  print("n1-n2 = ${n1-n2}");
  print("n1*n2 = ${n1*n2}");
  print("n1/n2 = ${n1/n2}");
  print("n1%n2 = ${n1%n2}\n");

              drawline(); //---------------------------------------------------- 
              
  int r =5;
  double pi =3.14;

  double res = 4*pi*r*r;

  print("The area of sphere = ${(res)}\n");

            drawline(); //----------------------------------------------------

  var num = 10, name2 = "dolphin";

  print(num is int);
  print(name2 is! String);
  //print(!(name2 is! String));
              drawline(); //----------------------------------------------------

  String str1 = 'this is an example of a single-line string';
  String str2 = "this is an example of a double-quotes multiline line string";
  String str3 = """this is an example of a 
    triple-quotes 
        multiline line string
 test test test
  """;

  print("\n" + str1 + "\n" + str2 + "\n" + str3 + "\n");

        drawline(); //---------------------------------------------------- 

  print("list:");
  var list1 = <int>[];
  list1.add(10);
  list1.add(11);
  list1.add(12);
  list1.add(13);
  list1.add(14);
  list1.add(14);
  print(list1);

        drawline(); //---------------------------------------------------- 

  print("\nset:");
  var mySet = <String>{};
  mySet.add("apple");
  mySet.add("banana");
  mySet.add("orange");
  mySet.add("apple");

  print(mySet);

  print(mySet.contains("banana"));
  print(mySet.contains("grape"));

  mySet.remove("apple");
  print(mySet);

        drawline(); //----------------------------------------------------

  print("\nmap:");
  var myMap = <String, int>{};

  myMap["apple"] = 3;
  myMap["banana"] = 5;
  myMap["orange"] = 2;

  print(myMap);

  print(myMap["banana"]);

  print(myMap.containsKey("apple"));
  print(myMap.containsKey("grape"));

  myMap.remove("orange");
  print("\nmap:");
  print(myMap);

       drawline(); //----------------------------------------------------

  print("factorial:");
  int fact =1;
  for(int i = 1; i <= 5; i++){
    fact =  fact * i;
  }
 print(fact);

        drawline(); //----------------------------------------------------

  print("Odd or even:");
  int num1 = 25;
  if(num1 % 2 == 0){
    print("even");

  } else{
    print("odd");
  }
        drawline(); //---------------------------------------------------- 

  print("Grade:");
  int grade = 75;
  if(grade > 85){
    print("Excellent");

  } else if (grade > 75){
    print("Very good");
  } else if(grade > 65){
    print("Good");
  } else {
    print("fail");
  }
           drawline(); 
  //----------------------------------------------------
  int a = 10, b = 6, c = 18;
  if(a>b){
    if(a>c){
      print("a is greater");
    } else{
      print("c is greater");
    }
  } else if (b>c){
    print("b is greater");
  } else {
    print("c is greater");
  }
}





drawline(){
    print("//----------------------------------------------------");
}