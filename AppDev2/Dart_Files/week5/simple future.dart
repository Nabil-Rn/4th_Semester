void main() {
  Future.delayed(Duration(seconds: 1), (){
    print('inside delayed 1');
  }).then((_) async{
    print('inside then 1');

    await Future.delayed(Duration(seconds: 1), (){
      print('inside delayed 2');
    });

    print('inside then 2');
  });

  print('after delayed');

}
