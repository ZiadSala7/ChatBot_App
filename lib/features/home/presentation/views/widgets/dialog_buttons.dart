import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/history/history_model.dart';
import '../../managers/history_cubit/history_cubit.dart';
import 'dialog_elevated_button.dart';

class DialogButtons extends StatelessWidget {
  const DialogButtons({
    super.key,
    required this.model,
  });

  final HistoryModel model;

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
            onPressed: () {
              BlocProvider.of<HistoryCubit>(context)
                  .deleteHistoryModel(model, context);

              Navigator.of(context).pop();
            },
          ),
          DialogElevatedButton(
            text: 'Cancel',
            color: Colors.green,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
