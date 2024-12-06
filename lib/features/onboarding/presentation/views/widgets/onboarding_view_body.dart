import 'package:chatbot_app/core/common/custom_robot_widget.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/rps_custom_painter.dart';
import 'package:flutter/material.dart';

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
