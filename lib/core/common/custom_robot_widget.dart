import 'package:animate_do/animate_do.dart';
import '../utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomRobotWidget extends StatelessWidget {
  final String image;
  const CustomRobotWidget({
    super.key,
    this.image = AppImages.splash,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(seconds: 2),
      curve: Easing.standard,
      animate: true,
      child: Image.asset(
        image,
        height: 450,
      ),
    );
  }
}
