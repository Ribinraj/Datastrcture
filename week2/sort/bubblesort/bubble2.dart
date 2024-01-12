bubble(List list) {
  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

void main(List<String> args) {
  List list = [
    45,
    23,
    89,
    5,
    6,
    8,
    525,
  ];
  bubble(list);
  print(list);
}
