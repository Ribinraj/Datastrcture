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
  void addNode(int data) {
    Node newNode = new Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
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
}

void main(List<String> args) {
  singly list = new singly();
  List list1 = [2, 3, 4, 5, 6];
  for (int data in list1) {
    list.addNode(data);
  }
  list.display();
}
