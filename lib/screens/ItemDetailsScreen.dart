import 'package:flutter/material.dart';
import '../CustomComponenets/CutomItemGridView.dart';
import '../CustomComponenets/SearchBar.dart';
import '../lists/cart_items.dart';

class ItemDetailsScreen extends StatefulWidget {
  final String imagePath;
  final String title;
  final String priceperkg;
  final String description;

  ItemDetailsScreen({
    required this.imagePath,
    required this.title,
    required this.priceperkg,
    required this.description,
  });

  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  bool _showSearchBar = false;
  int quantity = 0;

  void _toggleSearchBar() {
    setState(() {
      _showSearchBar = !_showSearchBar;
    });
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void addToCart() {
    GroceryItem item = GroceryItem(
      title: widget.title,
      price: widget.priceperkg,
      imagePath: widget.imagePath,
      quantity: quantity,
    );

    setState(() {
      groceryItems.add(item);
    });

    // Optional: Show a snackbar or any other UI feedback to indicate successful addition to the cart
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Item added to cart'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth >= 600 ? 4 : 2;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                children: [
                  if (!_showSearchBar) ...[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            color: Colors.black,
                            onPressed: _toggleSearchBar,
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (_showSearchBar) ...[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Search_Bar(),
                    ),
                  ],
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_circle, color: Colors.grey),
                          onPressed: decrementQuantity,
                        ),
                        Text(quantity.toString()),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: incrementQuantity,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.priceperkg,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 14,
                        childAspectRatio: 2.5,
                        children: [
                          GridItem(
                            imagePath: 'assets/images/lotus.png',
                            rightText1: '100%',
                            rightText2: 'Organic',
                          ),
                          GridItem(
                            imagePath: 'assets/images/calendar.png',
                            rightText1: '1 Year',
                            rightText2: 'Expiration',
                          ),
                          GridItem(
                            imagePath: 'assets/images/favourites.png',
                            rightText1: '4.8',
                            rightText2: 'Reviews',
                          ),
                          GridItem(
                            imagePath: 'assets/images/matches.png',
                            rightText1: '80kcal',
                            rightText2: '100g',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          addToCart();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.green,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.3,
                            vertical: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'DM Sans',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
