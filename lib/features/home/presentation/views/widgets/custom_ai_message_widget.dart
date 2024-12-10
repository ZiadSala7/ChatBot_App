import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/chat_decoration_method.dart';
import 'package:flutter/material.dart';

class CustomAIMessageWidget extends StatelessWidget {
  const CustomAIMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FittedBox(
          fit: BoxFit.contain,
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(15),
            decoration: chatMessageDecorationMethod(color: blueColor),
            child: Text(
              "Hello Brother hhhhhhhhhhhhhhhhhhhhhhhh",
              style: AppStyles.textChat14Parkins.copyWith(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.appLogo),
        ),
      ],
    );
  }
}
