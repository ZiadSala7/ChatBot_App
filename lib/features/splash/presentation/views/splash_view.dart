import 'dart:async';

import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/custom_fade_in_up_splash.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/custom_robot_splash.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  int counter = 0;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        counter++;
        setState(() {});
        if (counter == 5) {
          // Navigator.pushReplacementNamed(context, AppRoutes.onboardingView);
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomRobotSplash(),
            const Spacer(),
            counter == 0
                ? const SizedBox()
                : counter == 1
                    ? const FadeInUpSplash(height: 201)
                    : const FadeInUpSplash(height: 370),
          ],
        ),
      ),
    );
  }
}
