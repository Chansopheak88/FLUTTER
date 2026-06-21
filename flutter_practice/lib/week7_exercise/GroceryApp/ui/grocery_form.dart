// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button


import 'package:exercise_1/week7_exercise/GroceryApp/models/grocery.dart';
import 'package:flutter/material.dart';

class GroceryItemForm extends StatefulWidget {
  const GroceryItemForm({super.key});

  @override
  State<GroceryItemForm> createState() => _GroceryItemFormState();
}

class _GroceryItemFormState extends State<GroceryItemForm> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController trailingController = TextEditingController();

  void onCancel() {
    Navigator.pop(context, null);
  }

  void onSubmit() {
    final newItem = GroceryItem(
      id: DateTime.now().toString(),
      name: titleController.text,
      quantity: int.tryParse(trailingController.text) ?? 1,
      category: GroceryCategory.fruit,
    );
    Navigator.pop(context, newItem);
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
