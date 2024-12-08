// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/custom_fade_in_up_splash.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashStatefulWidget extends StatefulWidget {
  const SplashStatefulWidget({super.key});

  @override
  State<SplashStatefulWidget> createState() => _SplashStatefulWidgetState();
}

class _SplashStatefulWidgetState extends State<SplashStatefulWidget> {
  int counter = 0;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timerNavigationMethod();
  }

  Timer timerNavigationMethod() {
    return timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) async {
        counter++;
        setState(() {});
        if (counter == 4) {
          final sharedPref = await SharedPreferences.getInstance();
          final response = sharedPref.getBool('isClicked');
          response != true
              ? Navigator.pushReplacementNamed(
                  context, AppRoutes.onboardingView)
              : Navigator.pushReplacementNamed(context, AppRoutes.homeView);
          timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return counter == 0
        ? const SizedBox()
        : counter == 1
            ? const FadeInUpSplash(height: 201, txt: '')
            : counter == 2
                ? const FadeInUpSplash(height: 370, txt: '')
                : const FadeInUpSplash(height: 370, txt: MyStrings.hello);
  }
}
