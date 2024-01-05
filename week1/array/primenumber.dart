void main(List<String> args) {
  List<int> list = [2, 4, 5, 68, 9, 3];
  List<int> prime = [];
  
  for (int i = 0; i < list.length; i++) {
    bool isprime = true;
    for (int j = 2; j <= list[i] ~/ 2; j++) {
      if (list[i] % j == 0) {
        isprime = false;
        break;
      }
    }
    if (isprime) {
      prime.add(list[i]);
    }
  }
  print(prime);
}
