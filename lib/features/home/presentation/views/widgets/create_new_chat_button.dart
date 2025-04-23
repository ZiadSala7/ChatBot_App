import 'package:chatbot_app/constants.dart';
import '../../managers/history_cubit/history_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../managers/history_cubit/history_cubit.dart';

class CreateNewChatButton extends StatelessWidget {
  const CreateNewChatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryCubit, HistoryStates>(
      builder: (context, state) {
        return Row(
          spacing: 16,
          children: [
            FloatingActionButton(
              backgroundColor: mainColor,
              onPressed: () async {
                await BlocProvider.of<HistoryCubit>(context)
                    .addNewHistoryModel();
              },
              child: const Icon(Icons.add),
            ),
            const Text('Create New Chat', style: AppStyles.textStyle14),
          ],
        );
      },
      listener: (BuildContext context, HistoryStates state) {},
    );
  }
}
