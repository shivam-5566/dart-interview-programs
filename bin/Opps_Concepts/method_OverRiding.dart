// Base class (Parent)
class Animal {
  void sound() {
    print("Animals make sounds");
  }
}

// Derived class (Child) overriding the sound method
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

void main() {
  Animal animal = Animal();
  animal.sound();  // Output: Animals make sounds

  Dog dog = Dog();
  dog.sound();  // Output: Dog barks
}
