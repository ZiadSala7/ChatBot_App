import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'dialog_elevated_button.dart';

Future<dynamic> drawerShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: SizedBox(
          height: 300,
          child: Column(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Are you sure you want to delete this chat?',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle20ParkinsBold,
              ),
              Padding(
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
              )
            ],
          ),
        ),
      );
    },
  );
}
