binary(List list, int target) {
  int leftindex = 0;
  int rightindex = list.length - 1;
  while (leftindex <= rightindex) {
    int middle = ((leftindex + rightindex) / 2).floor();
    if (target == list[middle]) {
      return middle;
    }
    if (target < list[middle]) {
      rightindex = middle - 1;
    } else {
      leftindex = middle + 1;
    }
  }
  return -1;
}

void main(List<String> args) {
  List list = [5, 6, 7, 8, 9, 10, 11];
  int target = 9;
  int result = binary(list, target);
  print("element$target found t$result index");
}
