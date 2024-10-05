void main(){
  int year = 2024;
  if(( year % 4 == 0 && year % 100!=0)||(year % 400 ==0)){
    print("$year >> is Leap Year!");
  }else{
    print("Not a Leap Year!");
  }
}