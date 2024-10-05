void main(){
  print(sumOfDigit(12345));
}
int sumOfDigit(int number){
  return number.toString().split("").map(int.parse).reduce((a, b) => a+b);
}