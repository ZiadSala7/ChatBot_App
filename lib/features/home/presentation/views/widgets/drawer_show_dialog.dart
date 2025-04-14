// ignore_for_file: use_build_context_synchronously

import 'package:chatbot_app/features/home/data/models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../managers/history_cubit/history_cubit.dart';
import '../../managers/history_cubit/history_states.dart';
import 'dialog_elevated_button.dart';

class DrawerShowDialog extends StatelessWidget {
  final HistoryModel model;
  const DrawerShowDialog({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryCubit, HistoryStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                        onPressed: () {
                          BlocProvider.of<HistoryCubit>(context)
                              .deleteHistoryModel(model);

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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
