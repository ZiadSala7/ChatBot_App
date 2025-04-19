import 'package:chatbot_app/core/cache/cashe_helper.dart';
import 'package:chatbot_app/core/hive/hive_services.dart';
import 'package:chatbot_app/open_ai_chat_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HiveServices.registerAdapters();
  HiveServices.init();
  CacheHelper.init();
  runApp(const OpenAIChatApp());
}
