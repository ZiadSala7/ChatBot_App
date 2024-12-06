import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/common/custom_robot_widget.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/rps_custom_painter.dart';
import 'package:flutter/material.dart';

PageController controller = PageController();

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: PageView(
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

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
          Stack(
            children: [
              SizedBox(
                height: 370,
                width: double.infinity,
                child: CustomPaint(painter: RPSCustomPainter()),
              ),
              Positioned(
                bottom: 150,
                left: 40,
                child: Text(
                  txt,
                  style: AppStyles.textStyle25,
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 30,
                left: MediaQuery.of(context).size.width * .43,
                child: InkWell(
                  onTap: onPressed,
                  child: Image.asset(AppImages.continueButton),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
