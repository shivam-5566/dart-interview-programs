void greet({String name = "Guest", int age = 18}) {
  print("Hello, my name is $name and I am $age years old.");
}

void main() {
  greet();                            // Output: Hello, my name is Guest and I am 18 years old.
  greet(name: "Shivam");              // Output: Hello, my name is Shivam and I am 18 years old.
  greet(name: "Shivam", age: 27);     // Output: Hello, my name is Shivam and I am 27 years old.
}
