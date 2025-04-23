import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import '../../managers/image_cubit/image_cubit.dart';
import '../../../data/home_text_editing_controller.dart';
import '../../../data/models/chat/chat_model.dart';
import '../../managers/chat_cubit/chat_cubit.dart';
import '../../managers/chat_cubit/chat_state.dart';
import 'custom_outline_input_border_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final image = BlocProvider.of<ImageCubit>(context);
        final cubit = BlocProvider.of<ChatCubit>(context);
        return Flexible(
          child: TextField(
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                List<String> paths = image.images.map((x) => x.path).toList();
                ChatModel model = ChatModel(
                  id: currentId!,
                  message: value,
                  response: '',
                  images: paths,
                );
                cubit.addChatModel(model);
                image.images.isNotEmpty
                    ? BlocProvider.of<ImageCubit>(context)
                        .reInitializeImageList()
                    : null;
                chatController.clear();
              }
            },
            controller: chatController,
            decoration: InputDecoration(
              enabledBorder: customOutlineInputBorderMethod(),
              focusedBorder: customOutlineInputBorderMethod(),
              filled: true,
              fillColor: mainColor,
              hintText: MyStrings.textFieldTxt,
              suffixIcon: Image.asset(AppImages.sendIcon),
            ),
          ),
        );
      },
    );
  }
}
