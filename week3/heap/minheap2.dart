class minheap {
  List<int> heap = [];
  getParentIndex(int index) {
    return (index - 1) ~/ 2;
  }

  getleftINdex(int index) {
    return 2 * index + 1;
  }

  getrightIndex(int index) {
    return 2 * index + 2;
  }

  swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  heapifyup(int index) {
    int parentindex = getParentIndex(index);
    if (parentindex >= 0 && heap[parentindex] > heap[index]) {
      swap(index, parentindex);
      heapifyup(parentindex);
    }
  }

  heapifydown(int index) {
    int leftchildIndex = getleftINdex(index);
    int rightchildIndex = getrightIndex(index);
    int minIndex = index;
    if (leftchildIndex < heap.length && heap[leftchildIndex] < heap[minIndex]) {
      minIndex = leftchildIndex;
    }
    if (rightchildIndex < heap.length &&
        heap[rightchildIndex] < heap[minIndex]) {
      minIndex = rightchildIndex;
    }
    if (minIndex != index) {
      swap(index, minIndex);
      heapifydown(minIndex);
    }
  }

  insert(int value) {
    heap.add(value);
    heapifyup(heap.length - 1);
  }

  remove() {
    if (heap.isEmpty) {
      return null;
    }
    if (heap == 1) {
      return heap.removeLast();
    }
    int min = heap[0];
    heap[0] = heap.removeLast();
    heapifydown(0);
    return min;
  }

  heapsort() {
    List<int> sortedList = [];
    while (heap.isNotEmpty) {
      sortedList.add(remove());
    }
    return sortedList;
  }

  buildHeapfromArray(List<int> array) {
    heap = array;
    int firstNonleafIndex = (array.length - 2) ~/ 2;
    for (var i = firstNonleafIndex; i >= 0; i--) {
      heapifydown(i);
    }
  }
}

void main(List<String> args) {
  minheap heap = new minheap();
  // heap.insert(26);
  // heap.insert(27);
  // heap.insert(28);
  // heap.insert(29);
  print(heap.heap);
  List <int>list = [21, 36, 45, 86, 6];
  heap.buildHeapfromArray(list);
   print(heap.heap);
}
