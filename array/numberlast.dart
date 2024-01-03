// List<int> numberlast(List<int> array, int num) {
//   for (int i = 0; i < array.length; i++) {
//     for (int j = array.length - 1; j >= i; j--) {
//       if (array[j] == num) {
//         continue;
//       } else if (array[i] == num) {
//         int temp = array[i];
//         array[i] = array[j];
//         array[j] = temp;
//       }
//     }
//   }
//   return array;
// }

// void main() {
//   List<int> arr = [6, 8, 5, 9, 6, 6, 3, 8];
//   int number = 8;
//   List<int> result = numberlast(arr, number);
//   for (int i = 0; i < result.length; i++) {
//     print(result[i]);
//   }
// }
void main(List<String> args) {
  List list = [1, 2, 5, 2, 6, 2, 8, 2];
  int num = 2;
  for (int i = 0; i < list.length; i++) {
    for (int j = list.length - 1; j >= i; j--) {
      if (list[j] == num) {
        continue;
      } else if (list[i] == num) {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
