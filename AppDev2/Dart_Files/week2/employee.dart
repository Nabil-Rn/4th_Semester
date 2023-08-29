class Employee{
  var _empName = "mukul", _empAge = 24, _empSalary = 500;

  set empName(name) {
    _empName = name;
  }
  get empName => _empName;

  set empAge(value) {
    _empAge = value;
  }
  get empAge => _empAge;

  set empSalary(salary) {
    if (salary <= 0) {
      print("Salary cannot be less than 0");
    } else {
      _empSalary = salary;
    }
  }
  get empSalary => _empSalary;

}

void main(){
  Employee emp = new Employee();
  emp._empName = 'bob';
  emp._empAge = 25;
  emp._empSalary = 2500;
  print("Employee's name is : ${emp._empName}\nEmployee's age is : ${emp._empAge}\nEmployee's salary is : ${emp._empSalary}");

}