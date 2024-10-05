// Defining an interface using a class
class Animal {
  void sound(){} // Method without implementation (acts like an abstract method)
  void sleep() {
    print("The animal is sleeping.");
  }
}

// Implementing the interface
class Dog implements Animal {
  @override
  void sound() {
    print("Dog barks");
  }

  @override
  void sleep() {
    print("Dog is sleeping.");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("Cat meows");
  }

  @override
  void sleep() {
    print("Cat is sleeping.");
  }
}

void main() {
  Dog dog = Dog();
  dog.sound();  // Output: Dog barks
  dog.sleep();  // Output: Dog is sleeping.

  Cat cat = Cat();
  cat.sound();  // Output: Cat meows
  cat.sleep();  // Output: Cat is sleeping.
}
