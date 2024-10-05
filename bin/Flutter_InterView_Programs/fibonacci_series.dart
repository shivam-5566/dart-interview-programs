void main() {
  int n = 7; // Set to 7 for the Fibonacci series
  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
