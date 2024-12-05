import 'package:animate_do/animate_do.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'rps_custom_painter.dart';
import 'package:flutter/material.dart';

class FadeInUpSplash extends StatelessWidget {
  final double height;
  final String txt;
  const FadeInUpSplash({
    super.key,
    required this.height,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: height,
            width: double.infinity,
            child: FadeInUp(
              child: CustomPaint(painter: RPSCustomPainter()),
            ),
          ),
          Positioned(
            bottom: 185,
            left: 110,
            child: Text(txt, style: AppStyles.textStyle50),
          ),
        ],
      ),
    );
  }
}
