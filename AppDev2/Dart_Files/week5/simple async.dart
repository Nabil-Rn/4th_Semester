void main() async{
  await Future.delayed(Duration(seconds: 5), () {
  print('inside delayed');
  });
  print('inside then');

  print('after delayed');
}