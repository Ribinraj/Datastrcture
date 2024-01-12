selectionsort(List list) {
  for (var i = 0; i < list.length - 1; i++) {
    int minIndex = i;
    for (var j = i + 1; j < list.length; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    int temp = list[minIndex];
    list[minIndex] = list[i];
    list[i] = temp;
  }
}

void main(List<String> args) {
  List list = [12, 36, 5, 9, 68];
  selectionsort(list);
  print(list);
}
