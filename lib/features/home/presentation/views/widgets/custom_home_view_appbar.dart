import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

homeViewAppBar(BuildContext context) {
  return AppBar(
    title: const Text("AI Chat", style: AppStyles.textStyle20ParkinsBold),
    centerTitle: true,
    backgroundColor: mainColor,
    leading: Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: const Icon(Icons.menu),
      );
    }),
  );
}
