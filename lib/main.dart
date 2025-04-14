import 'package:chatbot_app/core/debendency_injection/service_locator.dart';
import 'package:chatbot_app/core/hive/hive_services.dart';
import 'package:chatbot_app/open_ai_chat_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetitServiceLocator();
  HiveServices.registerAdapters();
  HiveServices.init();
  runApp(const OpenAIChatApp());
}
