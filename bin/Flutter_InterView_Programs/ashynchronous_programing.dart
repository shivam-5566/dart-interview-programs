import 'dart:async';

void main(){
  print("________Ashynchronous Programming_________");
  print("______Using Future________");
  getData().then((value) => print('$value'));
  print("_______Using Stream________");
  final StreamController fController = StreamController();
  print(fetchData());

  
}
Future<String> getData() async{
  return Future.delayed(Duration(seconds: 2),()=> 'Data Recieved!');
}
Stream<int> fetchData() async*{
  for(int i=1; i<=5;i++){
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}