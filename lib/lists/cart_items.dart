
class GroceryItem {
  final String title;
  final String price;
  final String imagePath;
  int quantity;

  GroceryItem({
    required this.title,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}

List<GroceryItem> groceryItems = [
  GroceryItem(
    title: 'Item 1',
    price: '\$10',
    imagePath: 'assets/images/bell_pepper.png',
    quantity: 1,
  ),
  GroceryItem(
    title: 'Item 2',
    price: '\$15',
    imagePath: 'assets/images/ginger.png',
    quantity: 2,
  ),
];
