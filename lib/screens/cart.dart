import 'package:flutter/material.dart';
import 'package:grocery_app_ui/screens/TrackOrder.dart';
import '../lists/cart_items.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void incrementQuantity(int index) {
    setState(() {
      groceryItems[index].quantity++;
    });
  }

  void decrementQuantity(int index) {
    if (groceryItems[index].quantity > 1) {
      setState(() {
        groceryItems[index].quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Cart'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: groceryItems.length,
                itemBuilder: (context, index) {
                  GroceryItem item = groceryItems[index];

                  return ListTile(
                    leading: Image.asset(item.imagePath),
                    title: Text(item.title),
                    subtitle: Text(item.price),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove_circle, color: Colors.grey),
                          onPressed: () {
                            decrementQuantity(index);
                          },
                        ),
                        Text(item.quantity.toString()),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            incrementQuantity(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrackOrderScreen()),
                  );
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
                    'Checkout',
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
    );
  }
}
