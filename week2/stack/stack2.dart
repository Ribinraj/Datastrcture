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
    }
    top = newNode;
  }

  pop() {
    if (top == null) {
      print('underflow');
      return;
    }
    top = top!.next;
  }

  display() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  minmum() {
    int minimum = top!.data!;
    Node? current = top;
    while (current != null) {
      if (current.data! < minimum) {
        minimum = current.data!;
      }
      current = current.next;
    }
    print(minimum);
  }

  size() {
    int count = 0;
    Node? current = top;
    while (current != null) {
      current = current.next;
      count++;
    }
    print(count);
  }
}

void main(List<String> args) {
  stack newstack = new stack();
  newstack.push(25);
  newstack.push(26);
  newstack.push(31);
  newstack.push(56);
  newstack.display();
  // newstack.pop();
  print('next');
  newstack.display();
  print('next');
  newstack.minmum();
  newstack.size();
}
