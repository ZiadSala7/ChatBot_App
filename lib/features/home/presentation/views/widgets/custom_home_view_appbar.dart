import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

homeViewAppBar() {
  return AppBar(
    title: const Text("AI Chat", style: AppStyles.textStyle20ParkinsBold),
    centerTitle: true,
    backgroundColor: mainColor,
    leading: InkWell(
      onTap: () {},
      child: Image.asset(AppImages.chatArrow),
    ),
  );
}
