// Abstract class
abstract class Animal {
  // Abstract method (no body, must be implemented by subclasses)
  void sound();

  // Concrete method (with implementation)
  void sleep() {
    print("The animal is sleeping.");
  }
}

// Subclass that extends the abstract class
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

// Subclass that extends the abstract class
class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  // You cannot create an instance of an abstract class
  // Animal animal = Animal(); // Error: Can't instantiate abstract class.

  // Create instances of the subclasses
  Dog dog = Dog();
  dog.sound();  // Output: Dog barks
  dog.sleep();  // Output: The animal is sleeping.

  Cat cat = Cat();
  cat.sound();  // Output: Cat meows
  cat.sleep();  // Output: The animal is sleeping.
}
