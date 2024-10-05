class Bird {}

class Fish {}

mixin CanWalk {
  void walk() {
    print("I can walk!");
  }
}

mixin CanSwim {
  void swim() {
    print("I can swim!");
  }
}

mixin CanFly {
  void fly() {
    print("I can fly!");
  }
}

class Duck extends Bird with CanWalk, CanSwim, CanFly {}

class Penguin extends Bird with CanWalk, CanSwim {}

class Shark extends Fish with CanSwim {}

void main() {
  Duck duck = Duck();
  duck.walk();  // Output: I can walk!
  duck.swim();  // Output: I can swim!
  duck.fly();   // Output: I can fly!

  Penguin penguin = Penguin();
  penguin.walk();  // Output: I can walk!
  penguin.swim();  // Output: I can swim!
  // penguin.fly(); // Error: Penguin can't fly

  Shark shark = Shark();
  shark.swim();    // Output: I can swim!
}

