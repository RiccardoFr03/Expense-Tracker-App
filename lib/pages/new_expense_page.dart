import 'package:expense_tracker/components/expense_edit.dart';
import 'package:expense_tracker/models/store_model.dart';
import 'package:flutter/material.dart';

class NewExpensePage extends StatefulWidget {
  static const route = "/expense/new";
  const NewExpensePage({super.key});

  @override
  State<NewExpensePage> createState() => _NewExpensePageState();
}

class _NewExpensePageState extends State<NewExpensePage> {
  void onSubmit({
    required double value,
    required String? description,
  }) {
    storeModel.value.createExpense(
      value: value,
      description: description,
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ExpenseEdit(
      onSubmit: onSubmit,
    );
  }
}
