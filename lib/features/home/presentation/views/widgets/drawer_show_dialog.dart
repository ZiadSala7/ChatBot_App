import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'dialog_buttons_section.dart';

Future<dynamic> drawerShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return const Dialog(
        child: SizedBox(
          height: 300,
          child: Column(
            spacing: 24,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Are you sure you want to delete this chat?',
                textAlign: TextAlign.center,
                style: AppStyles.textStyle20ParkinsBold,
              ),
              DialogButtonsSection(),
            ],
          ),
        ),
      );
    },
  );
}
