import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/chat_decoration_method.dart';
import 'package:flutter/material.dart';

class CustomAIMessageWidget extends StatelessWidget {
  final String txt;
  const CustomAIMessageWidget({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.appLogo),
        ),
        const SizedBox(width: 10),
        Container(
          constraints: const BoxConstraints(maxWidth: 250),
          padding: const EdgeInsets.all(15),
          decoration: chatMessageDecorationMethod(color: mainColor),
          child: Text(
            txt,
            style: AppStyles.textChat14Parkins.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
