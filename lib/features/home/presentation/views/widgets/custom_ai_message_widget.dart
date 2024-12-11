import 'dart:async';

import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'chat_decoration_method.dart';
import 'package:flutter/material.dart';

class CustomAIMessageWidget extends StatefulWidget {
  final String txt;
  const CustomAIMessageWidget({
    super.key,
    required this.txt,
  });

  @override
  State<CustomAIMessageWidget> createState() => _CustomAIMessageWidgetState();
}

class _CustomAIMessageWidgetState extends State<CustomAIMessageWidget> {
  bool isTrue = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isTrue = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.appLogo),
        ),
        const SizedBox(width: 10),
        isTrue
            ? Container(
                constraints: const BoxConstraints(maxWidth: 230),
                padding: const EdgeInsets.all(15),
                decoration: chatMessageDecorationMethod(color: mainColor),
                child: Text(
                  widget.txt,
                  style:
                      AppStyles.textChat14Parkins.copyWith(color: Colors.black),
                ),
              )
            : const SizedBox(
                width: 50,
                child: SpinKitThreeInOut(
                  color: blueColor,
                  size: 20,
                ),
              ),
      ],
    );
  }
}
