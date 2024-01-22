class Graph {
  late List<String> vertices;
  late Map<String, List<String>> edges;
  Graph() {
    vertices = [];
    edges = {};
  }
  void addvertex(String vertex) {
    vertices.add(vertex);
    edges[vertex] = [];
  }

  addedges(String vertex1, String vertex2) {
    if (edges.containsKey(vertex1) && edges.containsKey(vertex2)) {
      edges[vertex1]!.add(vertex2);
      edges[vertex2]!.add(vertex1);
    } else {
      print("add vertex first");
    }
  }

  display() {
    for (var vertex in vertices) {
      String neighbors = edges[vertex]!.join(',');
      print("$vertex --> $neighbors");
    }
  }

  bool hasEdge(vertex1, vertex2) {
    return edges[vertex1]!.contains(vertex2) &&
        edges[vertex2]!.contains(vertex1);
  }

  deleteEdge(vertex1, verttex2) {
    edges[vertex1]!.remove(verttex2);
    edges[verttex2]!.remove(vertex1);
  }

  deleteVertex(vertex) {
    if (!edges.containsKey(vertex)) {
      return null;
    }
    edges.remove(vertex);
    for (var othervertex in edges.keys) {
      edges[othervertex]!.remove(vertex);
    }
    vertices.remove(vertex);
  }

  bfs(String startVertex) {
    Set<String> visited = {};
    List<String> queue = [];
    visited.add(startVertex);
    queue.add(startVertex);
    while (queue.isNotEmpty) {
      String vertex = queue.removeAt(0);
      print(vertex);
      for (var neighbor in edges[vertex]!) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }
}

void main(List<String> args) {
  Graph graph = new Graph();
  graph.addvertex("a");
  graph.addvertex("b");
  graph.addedges("a", "b");
  print(graph.hasEdge("a", "b"));
  graph.display();
}
