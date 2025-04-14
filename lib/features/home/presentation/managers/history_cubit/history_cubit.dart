import 'package:chatbot_app/core/hive/hive_services.dart';
import 'package:chatbot_app/features/home/data/models/history_model.dart';
import 'history_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCubit extends Cubit<HistoryStates> {
  HistoryCubit() : super(InitialState());

  List<HistoryModel> hModels = [];

  // get all history models
  initList() {
    hModels = HiveServices.getAllHistoryModels();
    emit(GetAllHistoryModels());
  }

  // add new history model
  addNewHistoryModel() async {
    await HiveServices.addHistoryModel();
    initList();
  }

  // delete history model
  deleteHistoryModel(HistoryModel hModel) async {
    await HiveServices.deleteHistoryModel(hModel);
    initList();
  }
}
