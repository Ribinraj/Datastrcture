import 'dart:io';

class Node {
  int? value;
  Node? right;
  Node? left;
  Node(int value) {
    this.value = value;
    this.right = null;
    this.left = null;
  }
}

class binarySearchTree {
  Node? root;
  binarySearchTree() {
    this.root = null;
  }
  isEmpty() {
    return root == null;
  }

  insert(value) {
    Node newNode = new Node(value);
    if (root == null) {
      root = newNode;
    } else {
      insertNewnode(root, newNode);
    }
  }

  insertNewnode(Node? root, Node? newNode) {
    if (newNode!.value! < root!.value!) {
      if (root.left == null) {
        root.left = newNode;
      } else {
        insertNewnode(root.left, newNode);
      }
    } else {
      if (root.right == null) {
        root.right = newNode;
      } else {
        insertNewnode(root.right, newNode);
      }
    }
  }

  search(Node? root, int value) {
    if (root == null) {
      return 'value not found';
    } else {
      if (root.value == value) {
        return 'value found';
      } else if (value < root.value!) {
        return search(root.left, value);
      } else {
        return search(root.right, value);
      }
    }
  }

  // ========== DSF (Depth first search) ==========
  preorder(Node? root) {
    if (root != null) {
      stdout.write('${root.value}\t');
      preorder(root.left);
      preorder(root.right);
    }
  }

  inOrder(Node? root) {
    if (root != null) {
      inOrder(root.left);
      stdout.write('${root.value}\t');
      inOrder(root.right);
    }
  }

  postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      stdout.write('${root.value}\t');
    }
  }

  // ========= BFS (Breadth first search) =========
  levelorder() {
    List<Node> queue = [];
    queue.add(root!);
    while (queue.isNotEmpty) {
      Node? current = queue.removeAt(0);
      stdout.write('${current.value}\t');
      if (current.left != null) {
        queue.add(current.left!);
      }
      if (current.right != null) {
        queue.add(current.right!);
      }
    }
  }

  // ========== Finding the min and max value ==========
  min(Node? root) {
    if (root!.left == null) {
      return root.value;
    } else {
      return min(root.left);
    }
  }

  max(Node? root) {
    if (root!.right == null) {
      return root.value;
    } else {
      return max(root.right);
    }
  }

  // ========== Delete operation ==========
  delete(int value) {
    root = deleteNode(root, value);
  }

  deleteNode(Node? root, int value) {
    if (root == null) {
      return root;
    }
    if (value < root.value!) {
      root.left = deleteNode(root.left, value);
    } else if (value > root.value!) {
      root.right = deleteNode(root.right, value);
    } else {
      if (root.left == null && root.right == null) {
        return null;
      }
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }
      root.value = min(root.right);
      root.right = deleteNode(root.right, root.value!);
    }
    return root;
  }

  isvalidBst(Node? root, dynamic minvalue, dynamic maxvalue) {
    if (root == null) {
      return true;
    }
    if (root.value! <= minvalue || root.value! >= maxvalue) {
      return false;
    }
    return isvalidBst(root.left, minvalue, root.value) &&
        isvalidBst(root.right, root.value, maxvalue);
  }
}

void main(List<String> args) {
  binarySearchTree bst = binarySearchTree();
  bst.insert(10);
  bst.insert(5);
  bst.insert(3);
  bst.insert(7);
  bst.insert(15);
  bst.insert(12);
  print(bst.search(bst.root, 27));
  // bst.preorder(bst.root);
  // bst.inOrder(bst.root);
  // bst.postOrder(bst.root);
  bst.levelorder();
  // print(bst.max(bst.root));
  bst.delete(7);
  bst.levelorder();
  print(bst.isvalidBst(bst.root, double.negativeInfinity, double.infinity));
}
