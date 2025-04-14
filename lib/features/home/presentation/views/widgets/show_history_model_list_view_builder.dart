import '../../managers/history_cubit/history_cubit.dart';
import '../../managers/history_cubit/history_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_history_card.dart';

class ShowHistoryModelListViewBuilder extends StatelessWidget {
  const ShowHistoryModelListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryStates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<HistoryCubit>(context);
        return Expanded(
          child: ListView.builder(
            itemCount: cubit.hModels.length,
            itemBuilder: (context, index) {
              return ChatHistoryCard(model: cubit.hModels[index]);
            },
          ),
        );
      },
    );
  }
}
