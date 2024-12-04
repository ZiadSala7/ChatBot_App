import 'package:animate_do/animate_do.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomRobotSplash extends StatelessWidget {
  const CustomRobotSplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(seconds: 2),
      curve: Easing.standard,
      animate: true,
      child: Image.asset(
        AppImages.splash,
        height: 450,
      ),
    );
  }
}
