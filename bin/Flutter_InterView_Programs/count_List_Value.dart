void main(){
  //Count List Value
  List<String> fruits = ["Apple","Banana","Apple","Cherry","Cherry","Mango","Grapes","Cherry","Banana"];
  Map<String,dynamic> count = {};
  fruits.forEach((element) {
    if(count.containsKey(element)){
      count[element]=count[element]!+1;
    }else{
      count[element]=1;
    }
  });
  print(count);
}