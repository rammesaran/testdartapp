class TreeNode<E> {
  TreeNode(this.value);
  E value;
  List<TreeNode<E>> childern = [];

  void add(TreeNode<E> node) {
    childern.add(node);
  }

  void forEachDepthFirst(void Function(TreeNode<E> node) performaction) {
    performaction(this);
    for (final child in childern) {
      child.forEachDepthFirst(performaction);
    }
  }
}
