class Student {
  // Student(){
  //   print("Default constructor");
  // }

  // Student(this.stdName, this.stdAge) {
  //   print("\nStudent Name is : ${stdName}\nStudent Age is : ${stdAge}");
  // }

  static var stdBranch;
  String name = "null";
  int age = 0;

  String get stud_name{
    return name;
  }

  int get stud_age{
    return age;
  }

  void set stud_name(String name){
    this.name = name;
  }

  void set stud_age(int age){
    if(age <= 0){
      print("Age should be greater than 5");
    } else{
      this.age = age;
    }
  }

  var stdName, stdAge, stdRoll_nu;

  showStdInfo() {
    print("\nStudent Name is : ${stdName}\nStudent Age is : ${stdAge}\nStudent Roll number is : ${stdRoll_nu}\nBranch name is ${stdBranch}");
  }
}

void main() {
  //Student class
  var std = new Student();
  var std1 = new Student();
  //var std = new Student("Dolphin", 21);
  // std.stdName = "Peter";
  // std.stdAge=24;
  // std.stdRoll_nu=90001;
  //
    // std.stud_name = 'MARK';
    // std.stud_age = 10;
    // print(std.stud_name);
    // print(std.stud_age);
  //Accessing class function
      // Student.stdBranch ="Computer Science";
      // std.stdName = "Peter";
      // std.stdAge=24;
      // std.stdRoll_nu=90001;
      // std.showStdInfo();
      //
      // std1.stdName = "Peter";
      // std1.stdAge=24;
      // std1.stdRoll_nu=90001;
      // std1.showStdInfo();
  Child c = new Child();
  c.speak();
}

abstract class human {
  void speak(){
    print("i speak");
  }
}

abstract class person implements human{
  void speak();
}

class Parent  extends person{
  String f_name = "John";
  Parent(){
    print("Super class: fmaily name: ${f_name}");
  }

  speak(){
    print("I speak French");
  }
}

class Child extends Parent{
  String f_name = "Mike";
  Child():super(){
    //print("Sub class: fmaily name: ${super.f_name}");
  }
  speak(){
    super.speak();
    print("I speak English");
  }
}
