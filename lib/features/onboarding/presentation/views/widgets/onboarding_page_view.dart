import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      children: [
        OnboardingViewBody(
          image: AppImages.splash,
          txt: MyStrings.onboardingTxt1,
          onPressed: () {
            controller.nextPage(
                duration: const Duration(seconds: 1), curve: Easing.standard);
          },
        ),
        OnboardingViewBody(
          image: AppImages.onboarding,
          txt: MyStrings.onboardingTxt2,
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.homeView);
          },
        ),
      ],
    );
  }
}
