mergesort(List list) {
  if (list.length <= 1) {
    return;
  }
  int midIndex = (list.length / 2).floor();
  List left = list.sublist(0, midIndex);
  List right = list.sublist(midIndex);
  mergesort(left);
  mergesort(right);
  merge(left, right, list);
}

merge(List left, List right, List list) {
  int i = 0, l = 0, r = 0;
  while (l < left.length && r < right.length) {
    if (left[l] < right[r]) {
      list[i] = left[l];
      i++;
      l++;
    } else {
      list[i] = right[r];
      i++;
      r++;
    }
  }
  while (l < left.length) {
    list[i] = left[l];
    i++;
    l++;
  }
  while (r < right.length) {
    list[i] = right[r];
    i++;
    r++;
  }
}

void main(List<String> args) {
  List list = [32, 12, 56, 5, 89, 6, 9];
  mergesort(list);
  print(list);
}
