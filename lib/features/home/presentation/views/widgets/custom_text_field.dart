import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/home/data/home_text_editing_controller.dart';
import 'package:chatbot_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_outline_input_border_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        onSubmitted: (value) async {
          if (value.isNotEmpty) {
            BlocProvider.of<HomeCubit>(context).lst.add(value);
            BlocProvider.of<HomeCubit>(context)
                .sendTextAndImageRequest(message: value);
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
  }
}
