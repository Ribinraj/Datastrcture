selectionsort(List list) {
  for (var i = 0; i < list.length - 1; i++) {
    int smallIndx = i;
    for (var j = i + 1; j< list.length; j++) {
      if (list[smallIndx] > list[j]) {
        smallIndx = j;
      }
    }
    int temp = list[smallIndx];
    list[smallIndx] = list[i];
    list[i] = temp;
  }
}

void main(List<String> args) {
  List list = [42, 1, 3, 12, 6, 8, 69];
  selectionsort(list);
  print(list);
}
