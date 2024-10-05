void main(){
  //Find smallest and largest value in given array
  List<int> num = [12,42,55,23,78,85,63];
  int largestValue = num[0];
  int smallestValue = num[0];
  num.forEach((element) {
    if(element<smallestValue){
      smallestValue=element;
    }if(element>largestValue){
      largestValue=element;
    }
  });
  print("$smallestValue, $largestValue");

  //Using reduce method
  int minValue = num.reduce((a, b) => a<b?a:b);
  int maxValue =  num.reduce((a, b) => a>b?a:b);
  print("$minValue, $maxValue");
}