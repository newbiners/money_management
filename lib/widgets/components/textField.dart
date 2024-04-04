import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    //  SizedBox(
      // width: double.infinity,
      // Column(
      //   children: [
          TextField(
            // obscureText: true,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),dfdsfdsfds
              labelText: 'Password',
            ),
        //   ),
        // ],
      // ),
    );
  }
}
