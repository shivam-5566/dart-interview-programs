void main(){
  Tringle tringle = Tringle();
  tringle.perfectTriangle(7);
  print("----------------------");
  tringle.rightTringle(7);
}
class Tringle{
  void perfectTriangle(int row){
    for(int i=1;i<=row;i++){
     print(" "*(row-i)+"*"*(2*i-1));
  }
 }
 void rightTringle(int row){
    for(int r=1;r<=row;r++){
      print("#."*r);
    }
 }
}