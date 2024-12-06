import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_bottom_chatbar_item.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomHomeBottomBarChat extends StatelessWidget {
  const CustomHomeBottomBarChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBottomChatBarItem(
          image: AppImages.microphone,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        CustomBottomChatBarItem(
          image: AppImages.galleryIcon,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        const CustomTextField(),
      ],
    );
  }
}
