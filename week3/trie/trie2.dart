class TrieNode {
  late Map<String, TrieNode> children;
  late bool isWordEnd;
  TrieNode() {
    children = {};
    isWordEnd = false;
  }
}

class Trie {
  late TrieNode root;
  Trie() {
    root = TrieNode();
  }
  insert(String word) {
    TrieNode? currentNode = root;
    for (var i = 0; i < word.length; i++) {
      String chartoInsert = word[i];
      if (!currentNode!.children.containsKey(chartoInsert)) {
        currentNode.children[chartoInsert] = TrieNode();
      }
      currentNode = currentNode.children[chartoInsert];
    }
    currentNode!.isWordEnd = true;
  }

  contains(String word) {
    TrieNode? currentNode = root;
    for (var i = 0; i < word.length; i++) {
      String charTofind = word[i];
      if (!currentNode!.children.containsKey(charTofind)) {
        return false;
      }
      currentNode = currentNode.children[charTofind];
    }
    return currentNode!.isWordEnd;
  }

  startWithprefex(String prefix) {
    TrieNode? currentNode = root;
    for (var i = 0; i < prefix.length; i++) {
      String charTofind = prefix[i];
      if (!currentNode!.children.containsKey(charTofind)) {
        return false;
      }
      currentNode = currentNode.children[charTofind];
    }
    return true;
  }

  getWordswithprefix(String prefix) {
    TrieNode? currentNode = root;
    for (var i = 0; i < prefix.length; i++) {
      String chartofind = prefix[i];
      if (!currentNode!.children.containsKey(chartofind)) {
        return [];
      }
      currentNode = currentNode.children[chartofind];
    }
    List<String> words = [];
    collectwordwithprefix(currentNode, prefix, words);
    return words;
  }

  collectwordwithprefix(
      TrieNode? currentNode, String currentprefix, List<String> words) {
    if (currentNode!.isWordEnd) {
      words.add(currentprefix);
    }
    for (var char in currentNode.children.keys) {
      collectwordwithprefix(
          currentNode.children[char], currentprefix + char, words);
    }
  }
}

void main(List<String> args) {
  Trie trie = new Trie();
  trie.insert("jazim");
  trie.insert("emilu");
  trie.insert("emili");
  trie.insert("emu");
  print(trie.getWordswithprefix("em"));
}
