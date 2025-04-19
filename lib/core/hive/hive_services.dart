import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/cache/cashe_helper.dart';
import 'package:chatbot_app/core/hive/hive_boxs.dart';
import 'package:chatbot_app/features/home/data/models/chat/chat_model.dart';
import '../../features/home/data/models/history/history_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

abstract class HiveServices {
  static void registerAdapters() {
    Hive.registerAdapter(HistoryModelAdapter());
    Hive.registerAdapter(ChatModelAdapter());
  }

  static Future<void> init() async {
    await Hive.initFlutter();
    await openHistoryBox();
  }

  // this method to open chatHistoryBox
  static Future<void> openHistoryBox() async {
    await Hive.openBox<HistoryModel>(HiveBoxs.historyBoxId);
  }

  // this method to create new historyModel
  static Future<void> addHistoryModel() async {
    String id = const Uuid().v7();
    HistoryModel chatHistory = HistoryModel(
      id: id,
      dateTime: DateTime.now(),
      name: null,
    );
    await Hive.openBox<ChatModel>(id);
    var hBox = Hive.box<HistoryModel>(HiveBoxs.historyBoxId);
    CacheHelper.setString(activeId, id);
    currentId = id;
    hBox.add(chatHistory);
  }

  // this method to delete historyModel
  static Future<void> deleteHistoryModel(HistoryModel chatHistory) async {
    Hive.box<ChatModel>(chatHistory.id).clear();
    await chatHistory.delete();
  }

  // get all history models
  static List<HistoryModel> getAllHistoryModels() {
    var box = Hive.box<HistoryModel>(HiveBoxs.historyBoxId);
    var allValues = box.values.toList();
    return allValues;
  }

  // get all chat models
  static Future<List<ChatModel>> getAllChatModels(String id) async {
    await Hive.openBox<ChatModel>(id);
    var box = Hive.box<ChatModel>(id);
    var allValues = box.values.toList();
    return allValues;
  }

  // add new chat model to history model box
  static Future<void> addNewChatmodel(ChatModel model) async {
    var box = Hive.box<ChatModel>(model.id);
    box.add(model);
  }
}
