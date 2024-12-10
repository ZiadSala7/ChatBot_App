import 'package:chatbot_app/features/home/presentation/views/widgets/custom_ai_message_widget.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_human_message_widget.dart';
import 'package:flutter/widgets.dart';

class MessagesDisplayWidget extends StatefulWidget {
  const MessagesDisplayWidget({super.key});

  @override
  State<MessagesDisplayWidget> createState() => _MessagesDisplayWidgetState();
}

class _MessagesDisplayWidgetState extends State<MessagesDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: index % 2 == 0
              ? const CustomHumanMessageWidget()
              : const CustomAIMessageWidget(),
        );
      },
    );
  }
}
