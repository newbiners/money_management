import 'package:flutter/material.dart';
import 'package:money_manager/widgets/components/textField.dart';
class MyAddExpenses extends StatefulWidget {
  const MyAddExpenses({super.key});

  @override
  State<MyAddExpenses> createState() => _MyAddExpensesState();
}

class _MyAddExpensesState extends State<MyAddExpenses> {
  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '\$ ',
                    label: Text('Amount'),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(
                    //   _selectedDate == null
                    //       ? 'No date selected'
                    //       : formatter.format(_selectedDate!),
                    // ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_month,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // DropdownButton(
              //   value: _selectedCategory,
              //   items: Category.values
              //       .map(
              //         (category) => DropdownMenuItem(
              //           value: category,
              //           child: Text(
              //             category.name.toUpperCase(),
              //           ),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (value) {
              //     if (value == null) {
              //       return;
              //     }
              //     // setState(() {
              //     //   _selectedCategory = value;
              //     // });
              //   },
              // ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
