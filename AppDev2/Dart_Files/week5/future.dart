void main() {
  /*
  print('Start fetching recipes');

  Future.delayed(Duration(seconds: 5), () {
    print('recipes fetched');
  }).then((_) {
    print('after fetching recipes');
  });

  String computation = 'a random computation';
  print(computation);

  */
  //---------------------------------------------------
  // EX2
  Future.delayed(Duration(seconds: 1), (){
  print('inside delayed 1');
  }).then((_) {
    print('inside then 1');

    Future.delayed(Duration(seconds: 1), (){
      print('inside delayed 2');
    }).then((_) {
      print('inside then 2');
    });
  });

}
