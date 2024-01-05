class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(int data) {
    this.data = data;
  }
}

class doublyLinkedlist {
  Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    Node? temp = tail;
    if (temp == null) {
      print('no value');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void delete(int data) {
    Node? temp = head;
    if (temp!.data == data) {
      head = temp.next;
      head!.prev = null;
      return;
    }
    if (tail!.data == data) {
      tail!.prev!.next = null;
      tail = tail!.prev;
      return;
    }
    while (temp != null && temp.data != data) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    temp.prev!.next = temp.next;
    temp.next!.prev = temp.prev;
  }

  void insertAfter(int nextTo, int data) {
    Node newNode = new Node(data);
    Node? temp = head;
    // if (temp!.data == nextTo) {
    //   newNode.next = temp.next;
    //   temp.next!.prev = newNode;
    //   newNode.prev = temp;
    //   temp.next = newNode;
    //   return;
    // }
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
    newNode.next = temp.next;
    temp.next!.prev = newNode;
    newNode.prev = temp;
    temp.next = newNode;
  }

  void insertBefore(int bfrTo, int data) {
    Node addnew = new Node(data);
    Node? temp = head;
    if (temp!.data == bfrTo) {
      addnew.next = temp;
      temp.prev = addnew;
      head = addnew;
      return;
    }
    while (temp != null && temp.data != bfrTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
      addnew.prev = temp.prev;
    temp.prev!.next = addnew;
    addnew.next = temp;
    temp.prev = addnew;

  }
}

void main(List<String> args) {
  doublyLinkedlist doublyLinked = new doublyLinkedlist();
  doublyLinked.addNode(6);
  doublyLinked.addNode(7);
  doublyLinked.addNode(3);
  doublyLinked.display();
  print('next');
  // doublyLinked.delete(7);
  // doublyLinked.display();
  // doublyLinked.displayReverse();
  doublyLinked.insertAfter(6, 11);
  doublyLinked.display();
}
///////
