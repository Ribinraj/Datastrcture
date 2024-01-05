void main(List<String> args) {
  List list = [2, 5, 4, 8, 9];
  int num = 13;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] + list[j] == num) {
        print("$i and $j");
        break;
      }
    }
  }
}
