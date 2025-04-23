import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/core/utils/functions/my_app_routes.dart';
import 'package:flutter/material.dart';

class OpenAIChatApp extends StatelessWidget {
  const OpenAIChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashView,
      routes: myAppRoutes,
    );
  }
}
