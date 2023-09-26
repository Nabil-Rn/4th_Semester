import 'dart:async';

void main(){
  final controller = StreamController<int>();

  final stream = generateNumbers(controller);

  stream.listen((value){
    print(value);
  });

  Future.delayed(Duration(seconds: 3), (){
    controller.close();
  });
}

Stream<int> generateNumbers(StreamController<int> controller) async*{
  for(int i=1; i<=10; i++){
    await Future.delayed(Duration(seconds: 1));
    if(!controller.isClosed) {
      controller.sink.add(i);
    }
  }
}