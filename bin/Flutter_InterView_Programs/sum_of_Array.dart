void main(){
  List<int> num = [1,2,3,4,5];
  print(sumOfArray(num));
}
int sumOfArray(List<int> num){
  int sumValue = 0;
  num.forEach((element) {
    sumValue=sumValue+element;
  });
  return sumValue;
}
