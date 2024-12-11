import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/chat_decoration_method.dart';
import 'package:flutter/material.dart';

class CustomHumanMessageWidget extends StatelessWidget {
  final String txt;
  const CustomHumanMessageWidget({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 250),
          padding: const EdgeInsets.all(15),
          decoration: chatMessageDecorationMethod(color: blueColor),
          child: Text(
            textWidthBasis: TextWidthBasis.longestLine,
            txt,
            style: AppStyles.textChat14Parkins.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.avatar),
        ),
      ],
    );
  }
}
