import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/chat/chat_model.dart';
import 'chat_decoration_method.dart';
import 'package:flutter/material.dart';

class CustomAIMessageWidget extends StatelessWidget {
  final ChatModel model;
  const CustomAIMessageWidget({
    super.key,
    required this.model,
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
          constraints: const BoxConstraints(maxWidth: 230),
          padding: const EdgeInsets.all(15),
          decoration: chatMessageDecorationMethod(color: mainColor),
          child: Text(
            model.response,
            style: AppStyles.textChat14Parkins.copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}
