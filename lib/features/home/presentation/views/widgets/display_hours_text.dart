import 'package:flutter/material.dart';

import '../../../data/models/history/history_model.dart';

class DisplayHoursText extends StatelessWidget {
  const DisplayHoursText({
    super.key,
    required this.model,
  });

  final HistoryModel model;

  @override
  Widget build(BuildContext context) {
    int hour = model.dateTime.hour;
    int minute = model.dateTime.minute;
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'at ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: '${hour % 12}',
            style: const TextStyle(color: Colors.black),
          ),
          const TextSpan(
            text: ':',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: '${minute <= 9 ? '0$minute' : minute}',
            style: const TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: hour > 12 ? ' PM' : ' AM',
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
