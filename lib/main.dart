import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/cache/cashe_helper.dart';
import 'package:chatbot_app/core/hive/hive_services.dart';
import 'features/home/presentation/managers/image_cubit/image_cubit.dart';
import 'package:chatbot_app/open_ai_chat_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/presentation/managers/chat_cubit/chat_cubit.dart';
import 'features/home/presentation/managers/history_cubit/history_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HiveServices.registerAdapters();
  await CacheHelper.init();
  currentId = CacheHelper.sharedPreferences.getString(activeId) ?? '';
  HiveServices.init();
  CacheHelper.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HistoryCubit()..initList()),
        BlocProvider(create: (context) => ChatCubit()..getAllChatModels()),
        BlocProvider(create: (context) => ImageCubit()),
      ],
      child: const OpenAIChatApp(),
    ),
  );
}
