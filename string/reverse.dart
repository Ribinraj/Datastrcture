void main(List<String> args) {
  String str1 = "goodmorning";
  String rev = "";
  for (var i = str1.length - 1; i >= 0; i--) {
    rev += str1[i];
  }
  print(rev);
}
