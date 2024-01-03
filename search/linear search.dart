linear(List list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}

void main(List<String> args) {
  List list = [1, 2, 3, 4, 5];
  int value = 4;
  int result = linear(list, value);
  print("$value present at index$result");
}
