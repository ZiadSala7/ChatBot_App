import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_routes.dart';
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
            FadeIn(
              duration: const Duration(seconds: 2),
              curve: Easing.standard,
              animate: true,
              child: Image.asset(
                AppImages.splash,
                height: 450,
              ),
            ),
            const Spacer(),
            counter == 0
                ? const SizedBox()
                : counter == 1
                    ? const FadeInDownSplash(height: 201)
                    : const FadeInDownSplash(height: 370),
          ],
        ),
      ),
    );
  }
}

class FadeInDownSplash extends StatelessWidget {
  final double height;
  const FadeInDownSplash({
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = blueColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0003333, size.height * 0.2125714);
    path_0.quadraticBezierTo(size.width * 0.2510000, size.height * -0.0018571,
        size.width * 0.5016667, size.height * 0.0028571);
    path_0.quadraticBezierTo(size.width * 0.7519167, size.height * 0.0011429,
        size.width * 1.0040000, size.height * 0.2222857);
    path_0.lineTo(size.width * 1.0016667, size.height * 1.0014286);
    path_0.lineTo(size.width * 0.5016667, size.height * 1.0028571);
    path_0.lineTo(0, size.height * 1.0028571);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
