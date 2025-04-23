import '../../../../../core/common/custom_robot_widget.dart';
import 'package:flutter/material.dart';
import 'onboarding_stack.dart';

class OnboardingViewBody extends StatelessWidget {
  final String image;
  final String txt;
  final Function() onPressed;
  const OnboardingViewBody({
    super.key,
    required this.image,
    required this.txt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomRobotWidget(image: image),
          const Spacer(),
          OnboardingStack(txt: txt, onPressed: onPressed),
        ],
      ),
    );
  }
}
