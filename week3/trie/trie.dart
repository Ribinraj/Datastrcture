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
    for (int i = 0; i < word.length; i++) {
      String charToInsert = word[i];
      if (!currentNode!.children.containsKey(charToInsert)) {
        currentNode.children[charToInsert] = TrieNode();
      }
      currentNode = currentNode.children[charToInsert];
    }
    currentNode!.isWordEnd = true;
  }

  contains(String word) {
    TrieNode? currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String charToFind = word[i];
      if (!currentNode!.children.containsKey(charToFind)) {
        return false;
      }
      currentNode = currentNode.children[charToFind];
    }
    return currentNode!.isWordEnd;
  }

  startsWithPrefix(String prefix) {
    TrieNode? currentNode = root;
    for (int i = 0; i < prefix.length; i++) {
      String charaToFind = prefix[i];
      if (!currentNode!.children.containsKey(charaToFind)) {
        return false;
      }
      currentNode = currentNode.children[charaToFind];
    }
    return true;
  }

  getWordswithprefix(String prefix) {
    TrieNode? currentNode = root;
    for (int i = 0; i < prefix.length; i++) {
      String charTofind = prefix[i];
      if (!currentNode!.children.containsKey(charTofind)) {
        return [];
      }
      currentNode = currentNode.children[charTofind];
    }
    List<String> words = [];
    collectWordsWithprefix(currentNode, prefix, words);
    return words;
  }

  collectWordsWithprefix(
      TrieNode? node, String currentPrefix, List<String> words) {
    if (node!.isWordEnd) {
      words.add(currentPrefix);
    }
    for (String char in node.children.keys) {
      collectWordsWithprefix(node.children[char], currentPrefix + char, words);
    }
  }
}

void main(List<String> args) {
  Trie trie = new Trie();
  trie.insert("jazim");
  trie.insert("emilu");
  trie.insert("emili");
  trie.insert("emu");
  print(trie.contains("jazim"));
  print(trie.getWordswithprefix("em"));

}
