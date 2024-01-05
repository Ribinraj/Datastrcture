sum(int num) {
  if (num <= 1) {
    return num;
  }
  return num + sum(num - 1);
}

void main(List<String> args) {
  int result = sum(5);
  print(result);
}
