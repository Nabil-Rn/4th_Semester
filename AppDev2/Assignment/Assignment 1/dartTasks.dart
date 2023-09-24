import 'dart:io';

void main() {
  bool flag = true;

  while(flag) {
    print("\nHello sir !!!\nChoice what tasks you want to test:"
        "\n1, Area & circumference \n2. Bank & RBC  \n3. Calculate two numbers "
        "\n4. Map of names and salary between 50000 to 75000 \n5. list of numbers & list of Strings\n6. Exit");
    int number = int.parse(stdin.readLineSync()!);
    switch (number) {
      case 1:

        print("Enter the radius: ");
        int radius = int.parse(stdin.readLineSync()!);
        // Anonymous function
        var AreaAndCircumference = (int rad){
          var area = 3.14 * rad * rad;
          var circumference = 2 * 3.14 * rad; // Circumference formula
          return 'Area is $area circumference $circumference';
        };

        var result = AreaAndCircumference(radius);
        print(result);
        break;
      case 2:

        SuperBank defaultSuperBank = SuperBank();
        SuperBank namedSuperBank = SuperBank.namedConst('Named SuperBank');
        SuperBank paramSuperBank = SuperBank.parameterizedConstructor('ParamSuperBank', 1000000);

        RBC defaultRBC = RBC();
        RBC namedRBC = RBC.namedConstructor('Named RBC');
        RBC paramRBC = RBC.parameterizedConstructor('ParamRBC', 500000);

        break;
      case 3:

        print('Enter the Two numbers: ');
        double num1 = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        double num2 = double.tryParse(stdin.readLineSync()!) ?? 0.0;

        print('Enter the operator (+, -, *, /):');
        String operator = stdin.readLineSync()!;

        final calculator = (double a, double b, String operator) {
          switch (operator) {
            case '+':
              return a + b;
            case '-':
              return a - b;
            case '*':
              return a * b;
            case '/':
              if (b != 0) {
                return a / b;
              } else {
                return 'Division by zero is not allowed';
              }
            default:
              return 'Invalid operator';
          }
        };

        var result = calculator(num1, num2, operator);
        print('$num1 $operator $num2 = $result');

        break;
      case 4:

        var myMap = <String, double> {};
        myMap["Alice"] = 60000;
        myMap["Bob"] = 55000;
        myMap["Charlie"] = 80000;
        myMap["David"] = 72000;
        myMap["Eve"] = 45000;


        print('Names of people with salaries between 50000 and 75000: ');
        myMap.forEach((name, salary) {
          if (salary >= 50000 && salary <= 75000) {
            print('$name has salary of $salary');
          }
        });

        break;
      case 5:

        List<int> numbers = [1, 2, 3, 4, 5];
        print('List of Numbers: $numbers');
        numbers.remove(3);
        print(numbers.reversed);
        print(numbers.contains(3));
        print('List of Numbers: $numbers');

        List<String> strings = ['apple', 'banana', 'cherry', 'date', 'elderberry'];
        print('List of Strings: $strings');
        strings.remove('apple');
        print(strings.reversed);
        print(strings.contains('apple'));
        print('List of Strings: $strings');

        break;
      case 6:
        print('Bye!');
        flag = false;
        break;
      default:
        print('Invalid input. Please enter a number between 1 and 5.');
        break;
    }
  }
}

class SuperBank {

  SuperBank() {
    print("Super Bank!");
  }
  SuperBank.namedConst(String bank){
    print(bank);
  }

  SuperBank.parameterizedConstructor(String bank, int money ){
    print('Your bank : $bank, and amount: $money');
  }

}

class RBC extends SuperBank {
  // Default constructor for RBC
  RBC() : super() {
    print("RBC!");
  }

  // Named constructor for RBC
  RBC.namedConstructor(String bank) : super.namedConst(bank);

  // Parameterized constructor for RBC
  RBC.parameterizedConstructor(String bank, int money)
      : super.parameterizedConstructor(bank, money );
}

