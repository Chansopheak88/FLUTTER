import 'package:flutter/material.dart';
import '../data/mock_grocery_data.dart';
import '../models/grocery.dart';
import 'grocery_form.dart';
import 'grocery_tile.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  void onGroceryCreated(GroceryItem groceryItem) {
    setState(() {
      allGroceryItems.add(groceryItem);
    });
  }

  void onAddPressed() {
    showModalBottomSheet(
      isScrollControlled: true,
      builder: (context) => GroceryItemForm(onGroceryCreated: onGroceryCreated,),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: allGroceryItems.length,
        itemBuilder: (context, index) {
          return GroceryItemTile(groceryItem: allGroceryItems[index]);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: () => onAddPressed(),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
