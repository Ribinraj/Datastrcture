class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class queue {
  Node? front;
  Node? rear;
  enqueue(int data) {
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
    while (current == null) {
      print('queue is empty');
      return;
    }
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
  queue Q = queue();
  Q.enqueue(21);
  Q.enqueue(75);
  Q.enqueue(23);
  Q.enqueue(13);
  Q.display();
  print('next');
  Q.dequeue();
  Q.display();
}
