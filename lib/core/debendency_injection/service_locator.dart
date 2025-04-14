import 'package:get_it/get_it.dart';

import '../../features/home/presentation/managers/history_cubit/history_cubit.dart';

final getIt = GetIt.instance;

void setupGetitServiceLocator() {
  getIt.registerSingleton(HistoryCubit());
}
