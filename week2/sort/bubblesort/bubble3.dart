bubblesor(List list) {
  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j + 1];
        list[j + 1] = list[j];
        list[j] = temp;
      }
    }
  }
}

void main(List<String> args) {
  List list = [23, 5, 69, 8, 63, 41, 1];
  bubblesor(list);
  print(list);
}
