import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/cache/cashe_helper.dart';
import '../../managers/chat_cubit/chat_cubit.dart';
import '../../managers/chat_cubit/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/history/history_model.dart';
import 'card_text_details.dart';
import 'drawer_show_dialog.dart';

class ChatHistoryCard extends StatelessWidget {
  final HistoryModel model;
  const ChatHistoryCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = BlocProvider.of<ChatCubit>(context);
        return InkWell(
          onTap: () async {
            await CacheHelper.sharedPreferences.setString(activeId, model.id);
            currentId = model.id;
            cubit.getAllChatModels();
          },
          child: Card(
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTextDetails(model: model),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => DrawerShowDialog(model: model),
                      );
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(128, 255, 86, 74),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
