class Calculator {
  // Add method with optional positional parameters
  int add(int a, [int? b]) {
    if (b != null) {
      return a + b;
    }
    return a;
  }
}

void main() {
  Calculator calc = Calculator();

  // Calling add with one argument
  print(calc.add(5));  // Output: 5

  // Calling add with two arguments
  print(calc.add(5, 10));  // Output: 15
}
