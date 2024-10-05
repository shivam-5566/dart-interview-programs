import 'dart:io';

void main() {
  var student = [];
  student.add("Shivam");
  student.add(27);
  student.add(true);
  student.add(83000);
  print(student);
  print("________________");
  student[3]= 110000;
  print(student);
  print("________________");
  var a = student.first;
  print("First value of list is : $a");
  print("---------");
  print(student);
  print("___________");
  var stu2 = ["Robert",22,560000];
  var combine = student.addAll(stu2);
  print(student);
  print("______________");
  student.forEach((element) {
    print(element);
  });
  print("________________");
  student.removeLast();
  List<int> age = [27,11,32,17,13];
  age.sort();
  int largeAge  = age.last;
  print(largeAge);
  print("______________");
  student.clear();
  age.clear();
  print(student);
  print(age);
  stdout.write("_______________");
 // print(smallestAge);
}