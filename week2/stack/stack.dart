class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class stack {
  Node? Top = null;
  push(int data) {
    Node newNode = Node(data);
    if (Top == null) {
      Top = newNode;
    } else {
      newNode.next = Top;
      Top = newNode;
    }
  }

  display() {
    Node? current = Top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  pop() {
    if (Top == null) {
      print("stack is underflow");
      return;
    }
    Top = Top!.next;
  }

  displaysmall() {
    int smallest = Top!.data!;
    Node? current = Top;
    while (current != null) {
      if (current.data! < smallest) {
        smallest = current.data!;
      }
      current = current.next;
    }
    print(smallest);
  }

  sizeoftheStack() {
    int count = 0;
    Node? current = Top;
    while (current != null) {
      count++;
      current = current.next;
    }
    print(count);
  }
  //
  void popMiddle() {
  if (Top == null) {
    print("stack is underflow");
    return;
  }

  Node? slowPointer = Top;
  Node? fastPointer = Top;
  Node? prevNode;

  while (fastPointer != null && fastPointer.next != null) {
    fastPointer = fastPointer.next!.next;
    prevNode = slowPointer;
    slowPointer = slowPointer!.next;
  }

  if (prevNode != null) {
    // If the number of elements is odd, skip the middle element
    prevNode.next = slowPointer!.next;
  } else {
    // If the number of elements is even, update the top to skip the middle element
    Top = slowPointer!.next;
  }
}

}

void main(List<String> args) {
  stack Stack = stack();
  Stack.push(12);
  Stack.push(35);
  Stack.push(61);
  Stack.display();
  print('next');
  // Stack.pop();
  Stack.displaysmall();
  // Stack.display();
  Stack.sizeoftheStack();
}
