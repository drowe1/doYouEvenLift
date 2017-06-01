class BinaryTree {
  Node root;
  
  public void show(){
    show(root);
  }
  private void show(Node n){
    background(255);
    text(n.getStatement(),  width/2, height/3);
    if(!isLeaf(n)){
      drawButtons(n.getKey());
    }
    else if (isLeaf(n)){
      playAgainButton();
      playAgain = true;
    }
    drawPic(n.getKey());
  }
  
  public void goLeft(){
    goLeft(root);
    root = root.getLeft();
  }
  private void goLeft(Node n){
    n = n.getLeft();
    show(n);
  }
  
  public void goRight(){
    goRight(root);
    root = root.getRight();
  }
  private void goRight(Node n){
    n = n.getRight();
    show(n);
  }
  
  
  






  
  public boolean isLeaf(Node n) {
    if (n.getRight() == null && n.getLeft() == null){
      return true;
    }
    return false;
  }
  
  public void add(int key, String statement) {
    Node newNode = new Node(key, statement);
    if (root == null) {
      root = newNode;
    } else {
      Node focusNode = root;
      Node parent;

      while (true) {
        parent = focusNode;
        if (key<focusNode.key) {
          focusNode = focusNode.leftChild;
          if (focusNode == null) {
            parent.leftChild = newNode;
            return;
          }
        } else {
          focusNode = focusNode.rightChild;
          if (focusNode == null) {
            parent.rightChild = newNode;
            return;
          }
        }
      }
    }
  } 
  
    //public void preOrder() {//Just used for proof of concept
  //  preOrder(root);
  //}
  //private void preOrder(Node tree) {
  //  if (tree != null) {
      
  //    print(tree.getStatement()+" ");
  //    preOrder(tree.getLeft());
  //    preOrder(tree.getRight());
  //  }
  //}
}  