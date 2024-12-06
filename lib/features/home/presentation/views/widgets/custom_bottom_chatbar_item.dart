import 'package:chatbot_app/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomChatBarItem extends StatelessWidget {
  final String image;
  final Function() onPressed;
  const CustomBottomChatBarItem({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: mainColor,
        ),
        child: Image.asset(image),
      ),
    );
  }
}
