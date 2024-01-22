class Maxheap {
  List<int> heap = [];
  getParentIndex(int index) {
    return (index - 1) ~/ 2;
  }

  getLeftChildIndex(int index) {
    return 2 * index + 1;
  }

  getRightchildIndex(int index) {
    return 2 * index + 2;
  }

  swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  heapifyUp(int index) {
    int parentIndex = getLeftChildIndex(index);
    if (parentIndex >= 0 && heap[parentIndex] < heap[index]) {
      swap(index, parentIndex);
      heapifyUp(parentIndex);
    }
  }

  heapifyDown(int index) {
    int leftChildIndex = getLeftChildIndex(index);
    int rightChildIndex = getRightchildIndex(index);
    int maxIndex = index;
    if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[maxIndex]) {
      maxIndex = leftChildIndex;
    }
    if (rightChildIndex < heap.length &&
        heap[rightChildIndex] > heap[maxIndex]) {
      maxIndex = rightChildIndex;
    }
    if (maxIndex != index) {
      swap(index, maxIndex);
      heapifyDown(maxIndex);
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
    if (heap.length == 1) {
      return heap.removeLast();
    }
    int max = heap[0];
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return max;
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
    int firstNonleafIndex = (heap.length - 2) ~/ 2;
    for (int i = firstNonleafIndex; i >= 0; i--) {
      heapifyDown(i);
    }
  }
}
