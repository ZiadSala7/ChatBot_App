import 'package:chatbot_app/features/home/data/models/history_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

abstract class HiveModel {
  static const String chatHistoryIdBox = 'chatHistoryIdBox';
  static Future<void> init() async {
    await Hive.initFlutter();
    await openChatHistoryBox();
  }

  // this method to open chatHistoryBox
  static Future<void> openChatHistoryBox() async {
    await Hive.openBox<HistoryModel>(chatHistoryIdBox);
  }

  // this method to create new historyModel
  static addHistoryModel() {
    String id = const Uuid().v7();
    HistoryModel chatHistory = HistoryModel(
      id: id,
      dateTime: DateTime.now(),
      name: null,
    );
    Hive.box<HistoryModel>(chatHistoryIdBox).add(chatHistory);
  }

  // this method to delete historyModel
  static Future<void> deleteHistoryModel(HistoryModel historyModel) async {
    openChatBox(boxName: historyModel.id);
  }

  //chat boxs
  static Future<void> openChatBox({required String boxName}) async {
    await Hive.openBox<HistoryModel>(boxName);
  }
}
