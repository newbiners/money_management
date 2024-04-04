import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_manager/widgets/add_expenses.dart';
class MyExpense extends StatefulWidget {
  const MyExpense({super.key});

  @override
  State<MyExpense> createState() => _MyExpenseState();
}

class _MyExpenseState extends State<MyExpense> {
  void _btnShowButtonBtn() {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => MyAddExpenses()
    );
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipOval(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "MONEY MAKER",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ],
          ),
          actions: [
          IconButton(onPressed: _btnShowButtonBtn, icon: const Icon(Icons.add, color: Colors.white,))
          ],
        ),
        body: Text("cek"),
      );
  }
}