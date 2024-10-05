void main() {
  Map<String, dynamic> student = {
    "name": "shivam",
     "age": 27,
    "salary": 8736373,
    "isMale": true,
    "luckyNumber": [7,5,2,15]
  };
  print(student);
  student["birthPlace"] = "Pratapgarh";
  print(student["birthPlace"]);
  student.forEach((key, value) {print("$key : $value");});
  student.remove("isMale");
  print(student);
}