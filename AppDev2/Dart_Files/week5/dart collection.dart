void main(){

  List<int> ages = [10, 30, 25];

  List<String> names = ["Bob", "Miku", "John"];

  // fixed list
  var fixedList = List<int>.filled(5,0);
  print(fixedList);

  //Growable list



  //index by value
  print(ages.indexOf(30));

  //length
  print(ages.length);

  //Changing values of list
  names[1] = "Bill";
  print(names);

  //mutable and immutable list
  const List<String> namesConst = ["Miku", "Sonic", "Rock"];
  //namesConst[1] = 'Bill';
 //print(namesConst);

  //
  List<String> drinks = ["Water", "Juice", "milk", "Coke"];
  print("First element of the list is: ${drinks.first}");
  print("Last element of the list is: ${drinks.last}");
  List<int> ages2 = [];
  print("Is drinks Empty: "+drinks.isEmpty.toString());
  print("Is drinks not Empty: "+drinks.isNotEmpty.toString());
  print("Is ages Empty: "+ages2.isEmpty.toString());
  print("Is ages not Empty: "+ages2.isNotEmpty.toString());
  print("List in reverse: ${drinks.reversed}");


  //loop in list
  namesConst.forEach((n) => print(n));

  //multiply all value by 2
  //var douledList => ages.map((e) => e *2);

  //spread
  List list1 = ["Mango", "Apple"];
  List list2 = ["Orange", "Avocado", "Grape"];
  List list3 = ["Lemon"];

  var combinedList = [...list1, ...list2, ...list3];

  //condition in list
  bool sad = false;
  bool happy = true;
  var cart = ['Milk', 'ghee', if (sad) 'Beer', if (happy) 'cheese'];
  print(cart);

  //where
  //List<int> even = ages.when.

}


