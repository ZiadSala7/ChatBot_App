import 'package:flutter/material.dart';

import '../../../data/models/history/history_model.dart';

class DisplayDayText extends StatelessWidget {
  const DisplayDayText({
    super.key,
    required this.model,
  });

  final HistoryModel model;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: model.dateTime.day.toString(),
            style: const TextStyle(color: Colors.black),
          ),
          const TextSpan(
            text: '/',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: model.dateTime.month.toString(),
            style: const TextStyle(color: Colors.black),
          ),
          const TextSpan(
            text: '/',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: model.dateTime.year.toString(),
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
