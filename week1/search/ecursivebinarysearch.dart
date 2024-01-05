recursivebinary(List list, int target) {
  return search(list, target, 0, list.length - 1);
}

search(List list, int target, int leftindex, int rightindex) {
  if (leftindex > rightindex) {
    return -1;
  }
  int middleIndex = ((leftindex + rightindex) / 2).floor();
  if (target == list[middleIndex]) {
    return middleIndex;
  }
  if (target < list[middleIndex]) {
    return search(list, target, leftindex, middleIndex - 1);
  } else {
    return search(list, target, middleIndex + 1, rightindex);
  }
}

void main(List<String> args) {
  print(recursivebinary([
    1,
    2,
    5,
    6,
    8,
  ], 8));
}
