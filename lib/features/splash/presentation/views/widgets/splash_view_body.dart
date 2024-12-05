import 'package:chatbot_app/features/splash/presentation/views/widgets/custom_robot_splash.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/splash_stateful_widget.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomRobotSplash(),
          Spacer(),
          SplashStatefulWidget(),
        ],
      ),
    );
  }
}