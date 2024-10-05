void main(){
  int number = 9;
  bool isPrime = true;
  for(int i=2;i<=number~/2;i++){
    if(number%i==0){
      isPrime=false;
      break;
    }
  }if(isPrime) {
    print("prime");
  }else{
    print("not");
  }
  }




