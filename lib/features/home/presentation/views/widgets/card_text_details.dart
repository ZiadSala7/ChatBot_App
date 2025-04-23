import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/history/history_model.dart';
import 'display_day_text.dart';
import 'display_hours_text.dart';

class CardTextDetails extends StatelessWidget {
  final HistoryModel model;

  const CardTextDetails({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            getDayName(model.dateTime),
            overflow: TextOverflow.ellipsis,
            style: AppStyles.textStyle20ParkinsBold,
          ),
        ),
        Row(
          spacing: 10,
          children: [
            DisplayDayText(model: model),
            DisplayHoursText(model: model),
          ],
        ),
      ],
    );
  }
}
