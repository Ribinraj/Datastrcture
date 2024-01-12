class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class stack {
  Node? top;
  push(int data) {
    Node newNode = new Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  pop() {
    if (top == null) {
      print('underflow');
    } else {
      top = top!.next;
    }
  }

  display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  displaysmall() {
    Node? current = top;
    int small = top!.data!;
    while (current != null) {
      if (current.data! < small) {
        small = current.data!;
      }
      current = current.next;
    }
    print(small);
  }

  size() {
    int count = 0;
    Node? current = top;
    while (current != null) {
      count++;
      current = current.next;
    }
    print(count);
  }
}

void main(List<String> args) {
  stack newstack = new stack();
  newstack.push(12);
  newstack.push(13);
  newstack.push(14);
  newstack.push(15);
  newstack.display();
  newstack.pop();
  print('next');
  newstack.display();
  print('next');
  newstack.displaysmall();
  print('next');
  newstack.size();
}
