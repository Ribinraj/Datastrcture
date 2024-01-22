class Minheap {
  List<int> heap = [];
  getparentIndex(int index) {
    return (index - 1) ~/ 2;
  }

  getleftChildIndex(int index) {
    return 2 * index + 1;
  }

  getRightIndex(int index) {
    return 2 * index + 2;
  }

  swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  heapifyUp(int index) {
    int parentIndex = getparentIndex(index);
    if (parentIndex >= 0 && heap[parentIndex] > heap[index]) {
      swap(index, parentIndex);
      heapifyUp(parentIndex);
    }
  }

  heapifyDown(int index) {
    int leftChildIndex = getleftChildIndex(index);
    int rightChildIndex = getRightIndex(index);
    int minIndex = index;
    if (leftChildIndex < heap.length && heap[leftChildIndex] < heap[minIndex]) {
      minIndex = leftChildIndex;
    }
    if (rightChildIndex < heap.length &&
        heap[rightChildIndex] < heap[minIndex]) {
      minIndex = rightChildIndex;
    }
    if (minIndex != index) {
      swap(index, minIndex);
      heapifyDown(minIndex);
    }
  }

  insert(int value) {
    heap.add(value);
    heapifyUp(heap.length - 1);
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
    heapifyDown(0);
    return min;
  }

  heapsort() {
    List<int> sortedArray = [];
    while (heap.isNotEmpty) {
      sortedArray.add(remove());
    }
    return sortedArray;
  }

  buildHeapfromArray(List<int> array) {
    heap = array;
    int firstNonleafeIndex = (array.length - 2) ~/ 2;
    for (int i = firstNonleafeIndex; i >= 0; i--) {
      heapifyDown(i);
    }
  }
}

void main(List<String> args) {
  Minheap heap = new Minheap();
  heap.insert(23);
  heap.insert(33);
  heap.insert(43);
  heap.insert(53);
  print(heap.heap);
  print(heap.remove());
  print(heap.heap);
}
