void main() async{
  /*
  print('start fetching recipes');

  await Future.delayed(Duration(seconds: 5), (){
    print('recipes fetched');
  });
  // then block here is redundant
  /*.then((_) {
  print('after fetching recipes');
  });*/

  print('after fetching recipes');

  String computation = 'a random computation';
  print(computation);

  */
  //---------------------------------------------------
  // EX2
  print('Start');

  try{
  final user = await fetchUserData();
    print('Received user: $user');
  }catch(error) {
    print('Error: $error');
  }
  print('End');
}

Future<String> fetchUserData() async{
  await Future.delayed(Duration(seconds: 2));
  return 'John doe';
}