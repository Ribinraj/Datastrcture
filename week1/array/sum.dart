// twoNumberSum(List<int> array, int target) {
//   for (int i = 0; i < array.length - 1; i++) {
//     for (int j = i + 1; j < array.length; j++) {
//       if (array[i] + array[j] == target) {
//         return [array[i], array[j]];
//       }
//     }
//   }
//   return [];
// }

import 'dart:collection';

void main() {
  List<int> array = [5, 6, 7, 3, 9, 0, 2, 8];
  int target = 10;
  List<int> result = twoSumNumber(array, target);
  for (var i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

List<int> twoSumNumber(List<int> array, int target) {
  HashSet<int> newset = HashSet();
  for (int i = 0; i < array.length; i++) {
    int num = array[i];
    int match = target - num;
    if (newset.contains(match)) {
      return [num, match];
    } else {
      newset.add(num);
    }
  }
  return [];
}
