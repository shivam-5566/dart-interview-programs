void main(){
  print(countVowels("America is a great country"));
}
int countVowels(String paragraph){
  return paragraph.split('').where((element) => "aeiouAeiou".contains(element)).length;
}