import 'package:flutter/material.dart';
import 'package:money_manager/widgets/components/textField.dart';
import 'package:intl/intl.dart';

class MyAddExpenses extends StatefulWidget {
  const MyAddExpenses({super.key});

  @override
  State<MyAddExpenses> createState() => _MyAddExpensesState();
}

class _MyAddExpensesState extends State<MyAddExpenses> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _dateTime;
  void _btnAddDate() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final datePicker = await showDatePicker(
        context: context, firstDate: firstDate, lastDate: now);
    setState(() {
      _dateTime = datePicker;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          TextField(
           controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
               Expanded(
                child: TextField(
                  controller: _amountController,
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
                    Text(
                      _dateTime == null
                          ? 'No date selected'
                          : DateFormat.yMd().format(_dateTime!),
                    ),
                    IconButton(
                      onPressed: _btnAddDate,
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
              const Spacer(), // memindah posisi ke kanan
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
