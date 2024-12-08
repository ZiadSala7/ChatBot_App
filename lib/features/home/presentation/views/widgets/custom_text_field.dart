import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/home/data/home_text_editing_controller.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_outline_input_border_method.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

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
            final model = GenerativeModel(
                model: 'gemini-1.5-flash', apiKey: MyStrings.apiKey);
            final content = [Content.text(chatController.text)];
            final response = await model.generateContent(content);
            // ignore: avoid_print
            print(response.text);
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
