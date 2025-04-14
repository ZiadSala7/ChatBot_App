import 'package:chatbot_app/features/home/data/models/history_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

import '../../features/home/data/models/history_model.g.dart';

abstract class HiveServices {
  static void registerAdapters() {
    Hive.registerAdapter(HistoryModelAdapter());
    // Hive.registerAdapter(ChatModelAdapter());
  }

  static const String chatHistoryIdBox = 'chatHistoryBox';

  static Future<void> init() async {
    await Hive.initFlutter();
    await openHistoryBox();
  }

  // this method to open chatHistoryBox
  static Future<void> openHistoryBox() async {
    await Hive.openBox<HistoryModel>(chatHistoryIdBox);
  }

  // this method to create new historyModel
  static Future<void> addHistoryModel() async {
    String id = const Uuid().v7();
    HistoryModel chatHistory = HistoryModel(
      id: id,
      dateTime: DateTime.now(),
      name: null,
    );
    var idsBox = Hive.box<HistoryModel>(chatHistoryIdBox);
    idsBox.add(chatHistory);
  }

  // this method to delete historyModel
  static Future<void> deleteHistoryModel(HistoryModel chatHistory) async {
    await chatHistory.delete();
  }

  //chat boxs
  static Future<void> openChatBox({required String boxName}) async {
    await Hive.openBox<HistoryModel>(boxName);
  }

  //
  static List<HistoryModel> getAllHistoryModels() {
    var box = Hive.box<HistoryModel>(chatHistoryIdBox);
    var allValues = box.values.toList();
    return allValues;
  }
}
