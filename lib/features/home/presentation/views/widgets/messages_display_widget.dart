import 'package:chatbot_app/features/home/data/models/chat/chat_model.dart';
import 'package:chatbot_app/features/home/presentation/managers/chat_cubit/chat_cubit.dart';
import 'package:chatbot_app/features/home/presentation/managers/chat_cubit/chat_state.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_ai_message_widget.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_human_message_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagesDisplayWidget extends StatefulWidget {
  const MessagesDisplayWidget({super.key});

  @override
  State<MessagesDisplayWidget> createState() => _MessagesDisplayWidgetState();
}

class _MessagesDisplayWidgetState extends State<MessagesDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {
        setState(() {});
      },
      builder: (context, state) {
        List<ChatModel> lst = BlocProvider.of<ChatCubit>(context).lst;
        return ListView.builder(
          itemCount: BlocProvider.of<ChatCubit>(context).lst.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                spacing: 16,
                children: [
                  CustomHumanMessageWidget(
                    model: lst[index],
                  ),
                  CustomAIMessageWidget(model: lst[index]),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
