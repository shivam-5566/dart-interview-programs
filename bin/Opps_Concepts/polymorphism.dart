// Base class (Super class)
class Animal {
  void sound() {
    print("Animals make different sounds.");
  }
}

// Derived class (Sub class)
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Animal animal;

  animal = Dog();
  animal.sound(); // Output: Dog barks

  animal = Cat();
  animal.sound(); // Output: Cat meows
}
