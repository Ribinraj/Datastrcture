import 'dart:io';

class Node {
  int? value;
  Node? left;
  Node? right;
  Node(int value) {
    this.value = value;
    this.right = null;
    this.left = null;
  }
}

class binarysearchTree {
  Node? root;
  binarysearchTree() {
    this.root = null;
  }
  isEmpty() {
    return root = null;
  }

  insert(int value) {
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
    }
  }

  postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      stdout.write('${root.value}\t');
    }
  }

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
  
}

void main(List<String> args) {
  binarysearchTree bst = new binarysearchTree();
  bst.insert(21);
  bst.insert(31);
  bst.insert(41);
  bst.insert(51);
  print(bst.search(bst.root, 35));
  bst.delete(31);
  bst.levelorder();
}
