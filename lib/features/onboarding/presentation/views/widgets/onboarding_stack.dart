
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../splash/presentation/views/widgets/rps_custom_painter.dart';

class OnboardingStack extends StatelessWidget {
  const OnboardingStack({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  final String txt;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
