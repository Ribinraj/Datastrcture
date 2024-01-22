class Graph {
  List<String> vertices = [];
  Map<String, List<String>> edges = {};
  addvertex(String vertex) {
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
      print("$vertex-->$neighbors");
    }
  }

  hasedge(vertex1, vertex2) {
    return edges[vertex1]!.contains(vertex2) &&
        edges[vertex2]!.contains(vertex1);
  }

  deleteedge(vertex1, vertex2) {
    edges[vertex1]!.remove(vertex2);
    edges[vertex2]!.remove(vertex1);
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

  bfs(String startvertex) {
    Set<String> visited = {};
    List<String> queue = [];
    visited.add(startvertex);
    queue.add(startvertex);
    while (queue.isNotEmpty) {
      String vertex = queue.removeAt(0);
      print(vertex);
      for (var neighbour in edges[vertex]!) {
        if (!visited.contains(neighbour)) {
          visited.add(neighbour);
          queue.add(neighbour);
        }
      }
    }
  }

  dfs(String startvertex) {
    Set<String> visited = {};
    dfsHelper(String vertex) {
      visited.add(vertex);
      print(vertex);
      for (var neighbour in edges[vertex]!) {
        if (!visited.contains(vertex)) {
          dfsHelper(neighbour);
        }
      }
    }

    dfsHelper(startvertex);
  }
}

void main(List<String> args) {
   Graph graph = Graph();
   graph.addvertex("A");
  graph.addvertex("B");
  graph.addvertex("C");
  graph.addvertex("D");
  graph.addedges("A", "D");
  graph.addedges("A", "Z");
  graph.addedges("C", "B");
  graph.addedges("B", "D");
  graph.bfs("A");
  // graph.dfs("A");
}
