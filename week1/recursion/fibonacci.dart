fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(List<String> args) {
  int result = fibonacci(5);
  print(result);
}
