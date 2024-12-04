import 'package:animate_do/animate_do.dart';
import 'package:chatbot_app/features/splash/presentation/views/widgets/rps_custom_painter.dart';
import 'package:flutter/material.dart';

class FadeInUpSplash extends StatelessWidget {
  final double height;
  const FadeInUpSplash({
    super.key,
    required this.height,
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
              child: CustomPaint(
                painter: RPSCustomPainter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
