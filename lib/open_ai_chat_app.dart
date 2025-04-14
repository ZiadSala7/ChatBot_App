import 'package:chatbot_app/core/utils/app_routes.dart';
import 'package:chatbot_app/core/utils/functions/my_app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/managers/chat_cubit/home_cubit.dart';
import 'features/home/presentation/managers/history_cubit/history_cubit.dart';

class OpenAIChatApp extends StatelessWidget {
  const OpenAIChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HistoryCubit()..initList()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashView,
        routes: myAppRoutes,
      ),
    );
  }
}
