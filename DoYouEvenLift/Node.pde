class Node {
  
  int key;
  String statement;
  Node leftChild;
  Node rightChild;
  Node papa;

  Node(int key, String statement) {
    this.key = key;
    this.statement = statement;
  }
  
  public String getStatement(){
    return statement;
  }
  
  public int getKey(){
    return key;
  }
  
  public Node getLeft(){
    return leftChild;
  }
  
  public Node getRight(){
    return rightChild;
  }
}