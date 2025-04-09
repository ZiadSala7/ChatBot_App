
import 'package:flutter/material.dart';

import 'dialog_elevated_button.dart';

class DialogButtonsSection extends StatelessWidget {
  const DialogButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DialogElevatedButton(
            text: 'Delete',
            color: Colors.red,
            onPressed: () {},
          ),
          DialogElevatedButton(
            text: 'Cancel',
            color: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
