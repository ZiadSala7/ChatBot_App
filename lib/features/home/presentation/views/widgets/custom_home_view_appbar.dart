import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Image.asset(AppImages.chatArrow),
        ),
        const SizedBox(width: 110),
        const Text(
          "AI Chat",
          style: AppStyles.textStyle20ParkinsBold,
        ),
      ],
    );
  }
}
