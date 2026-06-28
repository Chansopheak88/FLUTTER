import '../models/expense.dart';
import '../repository/expense_repository.dart';

void main() async {
  print("Fetching expense");

  List<Expense> expenses = await expenseRepository.fetchExpense();
  for (Expense e in expenses) {
    print("expense fetched: ${e.amount}, ${e.title}");
  }
}
