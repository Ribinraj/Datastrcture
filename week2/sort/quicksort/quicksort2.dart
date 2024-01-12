List quicksort(List list) {
  if (list.length <= 1) {
    return list;
  }
  int pivot = list[list.length - 1];
  List left = [];
  List right = [];
  for (var i = 0; i < list.length-1; i++) {
    if (list[i] < pivot) {
      left.add(list[i]);
    } else {
      right.add(list[i]);
    }
  }
  return [...quicksort(left), pivot, ...quicksort(right)];
}

void main(List<String> args) {
  List list = [5, 45, 8, 95, 36, 21];
  List result= quicksort(list);
  print(result);
}
