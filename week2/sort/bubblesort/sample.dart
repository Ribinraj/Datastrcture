class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class stack {
  Node? top = null;
  push(data) {
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
    Node? cuurent = top;
    while (cuurent != null) {
      print(cuurent.data);
      cuurent = cuurent.next;
    }
  }

  minimum() {
    int minvalue = top!.data!;
    Node? current = top;
    while (current != null) {
      if (current.data! < minvalue) {
        minvalue = current.data!;
      }
      current = current.next;
    }
    print(minvalue);
  }
}

void main(List<String> args) {
  stack newstack = new stack();
  newstack.push(12);
  newstack.push(34);
  newstack.push(9);
  // newstack.minimum();
  newstack.display();
  newstack.pop();
  print('next');
  newstack.display();
}
