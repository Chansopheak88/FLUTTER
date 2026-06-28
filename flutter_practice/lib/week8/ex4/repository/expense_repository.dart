
import '../models/expense.dart';

class ExpenseRepository {
  // Expense singelExpense = Expense(amount: 45, title: "fake");
  // Future<Expense> fetchExpense() {
  //   // Simulate 5 seconds before returnning the success fetch
  //   return Future.delayed(Duration(seconds: 5), () {
  //     return singelExpense;
  //   });
  // }

  List<Expense> allExpenses = [
    Expense(amount: 45, title: "banana"),
    Expense(amount: 54, title: "apple"),
    Expense(amount: 33, title: "grape"),
  ];
  Future<List<Expense>> fetchExpense() {
    return Future.delayed(Duration(seconds: 5), () {
      return allExpenses;
    });
  }
}

class ExpenseException implements Exception {
  final String message;
  ExpenseException(this.message);

  @override
  String toString() => message;
}

final ExpenseRepository expenseRepository =
    ExpenseRepository(); // global access for now
