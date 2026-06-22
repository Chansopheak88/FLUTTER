

import 'package:exercise_1/week7_exercise/GroceryApp/models/grocery.dart';
import 'package:flutter/material.dart';

class GroceryItemForm extends StatefulWidget {
  const GroceryItemForm({super.key, required this.onGroceryCreated});
  final ValueChanged<GroceryItem> onGroceryCreated; //passes item back to the parent widget

  @override
  State<GroceryItemForm> createState() => _GroceryItemFormState();
}

class _GroceryItemFormState extends State<GroceryItemForm> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController trailingController = TextEditingController();

  void onCancel() {
    Navigator.pop(context);
  }

  void onSubmit() {
    String title = titleController.text;
    int? amount = int.tryParse(trailingController.text);

    if (amount != null) {
      GroceryItem newItem = GroceryItem(
        name: title,
        quantity: amount,
        category: GroceryCategory.fruit,
      );
      widget.onGroceryCreated(newItem);
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    trailingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(label: Text("Enter title")),
          ),
          TextField(
            controller: trailingController,
            decoration: InputDecoration(label: Text("Enter quantity")),
          ),
          SizedBox(height: 40),
          ElevatedButton(onPressed: onCancel, child: Text("CANCEL")),
          ElevatedButton(onPressed: onSubmit, child: Text("SUBMIT")),
        ],
      ),
    );
  }
}
