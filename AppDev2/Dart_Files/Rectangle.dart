class Rectangle{

  late double width;
  late double height;

  Rectangle(this.width, this.height);

  Rectangle.square(double sideLength){
    width = sideLength;
    height = sideLength;
}



}

void main(){
  final rectangle = Rectangle(4.0, 6.0);
  final square = Rectangle.square(4);



}