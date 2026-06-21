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
  Future<void> onCreate(BuildContext context) async {
    // ---------------------------------------------
    // Navigate to the form screen using showModalBottomSheet
    // ---------------------------------------------

    // https://api.flutter.dev/flutter/material/showModalBottomSheet.html
    final newItem = await showModalBottomSheet<GroceryItem>(
      isScrollControlled: true,
      builder: (context) => GroceryItemForm(),
      context: context,
    );
    if (newItem == null) {
      return;
    }
    setState(() {
      allGroceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {
      // ---------------------------------------------
      //  Loop on groceries with an ListView builder
      //  For each grocery items, create a GroceryTile (grocery_tile.dart)
      // ---------------------------------------------
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
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
            onPressed: () => onCreate(context),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
