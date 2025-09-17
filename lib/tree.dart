class TreeNode<T> {
  TreeNode(this.value);

  T value;
  List<TreeNode<T>> childern = [];

  void add(TreeNode<T> child) {
    childern.add(child);
  }

  void depthFirst(void Function(TreeNode<T> node) performAction) {
    performAction(this);
    for (final element in childern) {
      element.depthFirst(performAction);
    }
  }
}

void main() {
  final beverage = TreeNode('beer');
  final hotDrinks = TreeNode('hotdrinks');
  final coolDrinks = TreeNode('coolDrinks');
  final tea = TreeNode('tea');
  final cold = TreeNode('soda');
  beverage.add(hotDrinks);
  beverage.add(coolDrinks);
  hotDrinks.add(tea);
  coolDrinks.add(cold);
  print(beverage);
}
