import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import '../../../data/models/chat/chat_model.dart';
import 'chat_decoration_method.dart';
import 'package:flutter/material.dart';

import 'display_images_human.dart';

class CustomHumanMessageWidget extends StatelessWidget {
  final ChatModel model;
  const CustomHumanMessageWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        model.images!.isEmpty
            ? const SizedBox()
            : DisplayImagesHuman(model: model),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 230),
              padding: const EdgeInsets.all(15),
              decoration: chatMessageDecorationMethod(color: blueColor),
              child: Text(
                textWidthBasis: TextWidthBasis.longestLine,
                model.message,
                style:
                    AppStyles.textChat14Parkins.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(AppImages.avatar),
            ),
          ],
        ),
      ],
    );
  }
}
