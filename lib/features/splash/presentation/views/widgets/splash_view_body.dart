import '../../../../../core/common/custom_robot_widget.dart';
import 'splash_stateful_widget.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomRobotWidget(),
          Spacer(),
          SplashStatefulWidget(),
        ],
      ),
    );
  }
}
