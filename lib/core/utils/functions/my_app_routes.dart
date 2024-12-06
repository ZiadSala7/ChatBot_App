import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/features/home/presentation/views/home_view.dart';
import 'package:chatbot_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:chatbot_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get myAppRoutes {
  return {
    AppRoutes.splashView: (context) => const SplashView(),
    AppRoutes.onboardingView: (context) => const OnboardingView(),
    AppRoutes.homeView: (context) => const HomeView(),
  };
}
