appendElement(List list, int element) {
  list.insert(1,7);
  return list;
}

void main(List<String> args) {
  List list = [3, 4, 5, 6];
  int element = 5;
  List append = appendElement(list, element);
  print(append);
}
