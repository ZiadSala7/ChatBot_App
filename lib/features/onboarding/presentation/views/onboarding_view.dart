import 'package:chatbot_app/constants.dart';
import 'widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

PageController controller = PageController();

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainColor,
      body: OnboardingPageView(),
    );
  }
}
