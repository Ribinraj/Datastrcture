insertionsort(List list) {
  for (var i = 1; i < list.length; i++) {
    int current = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > current) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = current;
  }
}

void main(List<String> args) {
  List list = [2, 65, 32, 13, 56, 41, 9];
  insertionsort(list);
  print(list);
}
