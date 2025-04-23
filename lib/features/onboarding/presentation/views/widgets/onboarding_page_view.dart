import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/my_strings.dart';
import '../onboarding_view.dart';
import 'onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          onPressed: () async {
            final shaerdPref = await SharedPreferences.getInstance();
            shaerdPref.setBool('isClicked', true);
            // ignore: use_build_context_synchronously
            Navigator.pushReplacementNamed(context, AppRoutes.homeView);
          },
        ),
      ],
    );
  }
}
