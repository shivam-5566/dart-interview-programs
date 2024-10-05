List<int> fibonacciSeries(int n) {
  List<int> series = [0, 1];
  for (int i = 2; i < n; i++) {
    series.add(series[i - 1] + series[i - 2]);
  }
  return series.sublist(0, n);
}

void main() {
  int n = 10; // Change this for more or fewer elements
  print(fibonacciSeries(n));
}

