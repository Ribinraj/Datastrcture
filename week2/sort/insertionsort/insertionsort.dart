insertionsort(List list) {
  for (int i = 1; i < list.length; i++) {
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
  List list = [41, 2, 56, 1, 8, 11, 62];
  insertionsort(list);
  print(list);
}
