// Define a Person class
class Person {
  // Instance variables (properties)
  String name;
  int age;

  // Constructor to initialize the object
  Person(this.name, this.age);

  // Method to display information about the person
  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }

  // Method to simulate a birthday
  void haveBirthday() {
    age += 1;
    print("$name just had a birthday! They are now $age years old.");
  }
}

void main() {
  // Creating an object (instance) of the Person class
  Person person1 = Person("John", 25);

  // Accessing the object's properties and methods
  person1.introduce(); // Output: Hello, my name is John and I am 25 years old.

  // Call the method to simulate a birthday
  person1
      .haveBirthday(); // Output: John just had a birthday! They are now 26 years old.

  // Creating another object of the Person class
  Person person2 = Person("Alice", 30);
  person2.introduce(); // Output: Hello, my name is Alice and I am 30 years old.
}
