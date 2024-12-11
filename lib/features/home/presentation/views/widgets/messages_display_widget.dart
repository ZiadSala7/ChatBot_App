import 'package:chatbot_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:chatbot_app/features/home/presentation/managers/cubit/home_state.dart';
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
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        List<String?> lst = BlocProvider.of<HomeCubit>(context).lst;
        return ListView.builder(
          itemCount: BlocProvider.of<HomeCubit>(context).lst.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: index % 2 == 0
                  ? CustomHumanMessageWidget(
                      txt: lst[index]!,
                    )
                  : CustomAIMessageWidget(txt: lst[index]!),
            );
          },
        );
      },
    );
  }
}
