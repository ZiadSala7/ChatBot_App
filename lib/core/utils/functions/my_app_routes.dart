import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get myAppRoutes {
  return {
    AppRoutes.splashView: (context) => const SplashView(),
  };
}
