class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class queue {
  Node? front = null;
  Node? rear = null;
  enque(int data) {
    Node newNode = new Node(data);
    if (rear == null) {
      rear = front = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  display() {
    Node? current = front;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  dequeue() {
    if (front == null) {
      print('empty');
      return;
    }
    front = front!.next;
    if (front == null) {
      rear = null;
    }
  }
}

void main(List<String> args) {
  queue quee = queue();
  quee.enque(23);
  quee.enque(36);
  quee.enque(14);
  quee.enque(33);
  quee.display();
  print('next');
  quee.dequeue();
  quee.display();
}
