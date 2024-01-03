factorial(int num) {
  if (num <= 1) {
    return 1;
    
  }
  return num * factorial(num - 1);
}

void main(List<String> args) {
  int result = factorial(5);
  print(result);
}
