import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class DialogElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  const DialogElevatedButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(
        text,
        style: AppStyles.textStyle20ParkinsBold.copyWith(color: Colors.white),
      ),
    );
  }
}
