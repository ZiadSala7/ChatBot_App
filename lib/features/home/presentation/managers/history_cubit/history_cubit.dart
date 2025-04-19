import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/cache/cashe_helper.dart';
import 'package:chatbot_app/core/hive/hive_services.dart';
import 'package:chatbot_app/features/home/data/models/history/history_model.dart';
import 'package:chatbot_app/features/home/presentation/managers/chat_cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'history_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCubit extends Cubit<HistoryStates> {
  HistoryCubit() : super(InitialState());

  List<HistoryModel> hModels = [];

  // get all history models
  initList() {
    hModels = HiveServices.getAllHistoryModels();
    if (hModels.isEmpty) {
      addNewHistoryModel();
      currentId = CacheHelper.getString(activeId);
    } else {
      currentId = CacheHelper.getString(activeId);
      emit(GetAllHistoryModels());
    }
  }

  // add new history model
  addNewHistoryModel() async {
    await HiveServices.addHistoryModel();
    initList();
  }

  // delete history model
  deleteHistoryModel(HistoryModel hModel, BuildContext context) async {
    if (hModels.length > 1) {
      await HiveServices.deleteHistoryModel(hModel);
      initList();
      CacheHelper.setString(activeId, hModels[0].id);
      currentId = hModels[0].id;
    }
    BlocProvider.of<ChatCubit>(context).getAllChatModels();
  }
}
