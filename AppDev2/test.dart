class Student{
  var stdName, stdAge, stdRoll_nu;

  showStdInfo(){
    print("Student Name is : ${stdName}\nStudent Age is : ${stdAge}\nStudent Roll number is : ${stdRoll_nu}\n");
  }
}

void main() {
  print("\nExmaple of add two numbers using the function");
  // Creating a function

  int sum(int a, int b) {
    int result;
    result = a + b;
    return result;
  }

  var c = sum(30, 20);
  print("The sum of two numbers is: ${c}\n");
  //--------------------------------------------------------------
  var sum2 = (int a, int b) => a * b;


  var b = sum2(5, 3);
  print("The sum of two numbers is: ${b}");
  print("The sum of two numbers is: ${sum2(5, 3)}\n");


  //-----------------------------------------------------------------
  void number(int n) {
    // Check the given number is even or odd
    if (n % 2 == 0) {
      print("The given number is even");
    } else {
      print("The given number is odd");
    }
  }
  number(20);
  //-----------------------------------------------------------------

  var list = ["Dolphin", "Duck", "Cat", "Sonic", "Shadow", "Monkey"];
  print("\nExample of anonymous function");
  list.forEach((element) {
    print('${list.indexOf(element) + 1}: $element');
  });

  //-----------------------------------------------------------------

  int factorial(int num) {
    //base case of recursion
    if (num <= 1) { //base case
      return 1;
    } else {
      return num * factorial(num - 1); //function call itself
    }
  }

  var num = 5;
  // Storing function call result in fact variable
  var fact = factorial(num);
  print("\nFactorial of 5 is: ${fact}");

  //-----------------------------------------------------------------

 //Student class
  var std = new Student();
  std.stdName = "Peter";
  std.stdAge=24;
  std.stdRoll_nu=90001;
  //Accessing class function
  std.showStdInfo();

  //-----------------------------------------------------------------

}
