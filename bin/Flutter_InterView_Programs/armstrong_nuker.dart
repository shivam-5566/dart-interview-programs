import 'dart:math';
void main(){
  int number = 153;

  if(isArmStrong(number)){
    print("$number, number is armstrong!");
  }else{
    print("not");
  }
}

bool isArmStrong(int number){
  int originalNumber=number;
  int numberOfDigit = number.toString().length;
 // print(numberOfDigit);
  int sum=0;
  while(number>0){
    int digit = number%10;
    sum+=pow(digit,numberOfDigit).toInt();
    number ~/= 10;
  }
  return sum == originalNumber;
}