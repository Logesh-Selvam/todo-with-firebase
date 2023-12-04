import 'package:flutter/material.dart';

import '../components/my_button.dart';

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
      backgroundColor: Colors.grey,
      content: Container(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new task",
              ),
            ),

            // buttons = save & cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  onTap: onSave,
                  text: "Save",
                ),

                const SizedBox(width: 3),

                // cancel button
                MyButton(
                  onTap: onCancel,
                  text: "No",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
