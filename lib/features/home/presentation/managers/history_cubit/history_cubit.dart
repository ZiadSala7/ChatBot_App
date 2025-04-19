import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/cache/cashe_helper.dart';
import 'package:chatbot_app/core/hive/hive_services.dart';
import '../../../data/models/history/history_model.dart';
import '../chat_cubit/chat_cubit.dart';
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
    // ignore: use_build_context_synchronously
    BlocProvider.of<ChatCubit>(context).getAllChatModels();
  }
}
