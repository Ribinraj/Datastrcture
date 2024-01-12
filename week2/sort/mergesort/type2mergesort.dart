void main() {
  List<int> array = [9, 3, 2, 5, 6, 3, 4, 72];
  List<int> result = mergeSort(array);

  print(result);
}

 mergeSort(List list) {
  if (list.length <= 1) {
    return list;
  }

  int mid = list.length ~/ 2;
  List left = mergeSort(list.sublist(0, mid));
  List right = mergeSort(list.sublist(mid));

  return merge(left, right);
}

 merge(List left, List right) {
  List result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}
