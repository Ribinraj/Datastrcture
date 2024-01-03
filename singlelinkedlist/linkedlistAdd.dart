class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class singly {
  Node? head = null;
  Node? tail = null;
  void addnewNode(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void delete(int data) {
    Node? temp = head, prev = null;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail!.next = null;
      return;
    }
    prev!.next = temp.next;
  }

  void insertAfter(int nextTo, int data) {
    Node newNode = new Node(data);
    Node? temp = head;
    // if (temp!.data == nextTo) {
    //   newNode.next = temp.next;
    //   temp.next = newNode;
    //   return;
    // }
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    //insert last
    if (temp == tail) {
      temp.next = newNode;
      tail = newNode;
      return;
    }
    //insert after
    newNode.next = temp.next;
    temp.next = newNode;
  }

  //insert first
  void insertbegining(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void display() {
    if (head == null) {
      print('empty');
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  //
  void displayRecursive(Node? node) {
    if (node == null) {
      return;
    }
    print(node.data);
    displayRecursive(node.next);
  }

  void displayUsingRecursion() {
    displayRecursive(head);
  }
}

void main(List<String> args) {
  singly linkedlist = new singly();
  linkedlist.addnewNode(5);
  linkedlist.addnewNode(12);
  linkedlist.addnewNode(11);
  linkedlist.addnewNode(44);
  linkedlist.addnewNode(33);
  linkedlist.display();
  print('next');
  linkedlist.delete(11);
  linkedlist.display();
  print('next');
  linkedlist.insertAfter(33, 99);
  linkedlist.display();
  print('next');
 
  linkedlist.insertbegining(66);
  linkedlist.displayUsingRecursion();                                         
}
