mergeSort(List list) {
  
  if (list.length <= 1) {
    return;
  }
  int middle = (list.length / 2).floor();
  List leftArray = list.sublist(0, middle);
  List rightArray = list.sublist(middle);
  
  mergeSort(leftArray);
  mergeSort(rightArray);
  merge(leftArray, rightArray, list);
}

merge(List leftArray, List rightArray, List list) {
  
  
  int i = 0, l = 0, r = 0;
  while (l < leftArray.length && r < rightArray.length) {
    if (leftArray[l] < rightArray[r]) {
      list[i] = leftArray[l];
      i++;
      l++;
    } else {
      list[i] = rightArray[r];
      i++;
      r++;
    }
  }
  while (l < leftArray.length) {
    list[i] = leftArray[l];
    i++;
    l++;
  }
  while (r < rightArray.length) {
    list[i] = rightArray[r];
    i++;
    r++;
  }
}

void main(List<String> args) {
  List list = [4, 2, 5, 7, 3, 1, -9];
  mergeSort(list);
  print(list);
}
