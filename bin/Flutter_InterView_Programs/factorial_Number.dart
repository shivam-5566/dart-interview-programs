void main(){
  print(findFactorial(5));
}
int findFactorial(int number){
  int value = 1;
  for(int i=1;i<=number;i++){
    value=value*i;
  }
  return value;
}