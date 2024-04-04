
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_manager/widgets/expenses.dart';
import 'package:money_manager/widgets/add_expenses.dart';


void main() {
  runApp(const Expenses());
}

class Expenses extends StatelessWidget {
   const Expenses({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyExpense()
    );
  }
}
