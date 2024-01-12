selectionsort(List list) {
  for (int i = 0; i < list.length-1; i++) {
    int minIndex = i;
    for (int j = i+1; j < list.length; j++) {
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
  List list = [5, 89, 63, 5, 96, 4, 12];
  selectionsort(list);
  print(list);
}
