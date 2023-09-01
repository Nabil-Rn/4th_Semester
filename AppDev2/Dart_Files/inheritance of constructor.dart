class Laptop{

  // Laptop({var name, var color}) {
  //   print("Laptop constructor");
  //   print("Name: $name");
  //   print("Color: $color");
  // }

  Laptop(){
    print("Laptop constructor");
  }

  Laptop.named(){
    print("Laptop named constructor");
  }

}

class Macbook extends Laptop{
  // Macbook({var name, color}) : super(name: name, color: color) {
  //   print("Macbook constructor");
  // }

  Macbook() : super.named(){
    print("Macbook constructor");
  }
}

void main(){
  var macbook = Macbook();
}
