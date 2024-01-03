void main(List<String> args) {
  String str1 = "malayalam";
  String rev = "";
  for (var i = str1.length - 1; i >= 0; i--) {
    rev += str1[i];
  }
  if (str1 == rev) {
    print("palindrome");
  } else {
    print("not palindrome");
  }
}
