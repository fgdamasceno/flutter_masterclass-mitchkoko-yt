import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_buttoms.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff40534c),
      content: SizedBox(
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // buttoms - save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save buttom
                MyButtoms(text: "Save", onPressed: onSave),
                SizedBox(width: 12.0),
                // cancel buttom
                MyButtoms(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
