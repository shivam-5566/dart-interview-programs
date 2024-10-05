void main(){
  //Return a List that contain duplicate Value
  List<int> num = [1,2,3,1,5,2,4,7,4];
  Set<int> seen  ={};
  Set<int> duplicate = {};
  num.forEach((element) {
    if(seen.contains(element)){
      duplicate.add(element);
    }else{
      seen.add(element);
    }
  });
  List<int> result = duplicate.toList();
  print(result);
}