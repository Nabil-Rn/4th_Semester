class Employee{
  var _empName = "Bob";
  var _empAge = 21;
  var _empSalary = 500;

  get empName => _empName;

  set empName(value) {
    _empName = value;
  }

  get empAge => _empAge;

  get empSalary => _empSalary;

  set empSalary(value) {
    _empSalary = value;
  }

  set empAge(value) {
    _empAge = value;
  }
}

class Student{
  Student(){
    print("inside Student Constructor");
  }
  
  Student.nameConst(String stCode){
    print(stCode);
  }
  
}

void main(){
  print('\nGetter and setter for private variables :\n');
  Employee emp = new Employee();
  emp.empName = "Mike";
  emp.empAge = 25;
  emp.empSalary = 2000;

  print("Employee name is : ${emp._empName}");
  print("Employee age is : ${emp._empAge}");
  print("Employee salary is : ${emp._empSalary}");


  //--------------------------------------------------
  print('\nAnonymous function:\n');

  var words = ['sky','sonic','cat','Dolphin'];

  words.forEach((word) {

    print('$word has ${word.length} characters');

  });

  //--------------------------------------------------
  print('\nFunction parameter:\n');

  int r1 = apply(3, inc);
  print(r1);
  int r2 = apply(2, dec);
  print(r2);


  //--------------------------------------------------
  print('\nFunction parameter:\n');

  String buildMessage(String name, String occupation){
    return "$name is a $occupation";
  }

  var name = "John Doe";
  var occupation = "Gardener";

  var msg = buildMessage(name, occupation);
  print (msg);


  //--------------------------------------------------
  print('\nNamed Constructor:\n');
  
  Student st1 = new Student();

  Student st2 = new Student.nameConst("Bob");
  

}




int inc(int x) => ++x;

int dec(int x) => --x;

int apply(int x, Function f){
  return f(x);

}
