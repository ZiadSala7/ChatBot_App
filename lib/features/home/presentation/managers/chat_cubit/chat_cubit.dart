import 'dart:io';

import 'package:chatbot_app/constants.dart';
import '../../../../../core/hive/hive_services.dart';
import '../../../../../core/utils/my_strings.dart';
import '../../../data/models/chat/chat_model.dart';
import 'chat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatCubit extends Cubit<ChatStates> {
  ChatCubit() : super(ChatInitialState());
  List<ChatModel> lst = [];

  // get all chat models
  getAllChatModels() async {
    lst = await HiveServices.getAllChatModels(currentId!);
    emit(GetAllChats());
  }

  // send text message only
  sendTextMessageOnly(String message, String id) async {
    final model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: MyStrings.apiKey,
    );
    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    ChatModel chatModel = ChatModel(
      id: id,
      message: message,
      response: response.text!,
      isResponse: true,
      images: [],
    );
    await HiveServices.addNewChatmodel(chatModel);
    await getAllChatModels();
  }

  // send text message and images
  sendTextMessageAndImages(
      List<String> xfiles, String prompt, String id) async {
    final model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: MyStrings.apiKey,
    );

    final imageParts = await imagePathsToParts(xfiles);

    final content = [
      Content.multi([TextPart(prompt), ...imageParts])
    ];

    await responseCreateChatModel(model, content, id, prompt);
  }

  // response create chat model
  Future<void> responseCreateChatModel(GenerativeModel model,
      List<Content> content, String id, String prompt) async {
    final response = await model.generateContent(content);
    ChatModel chatModel = ChatModel(
      id: id,
      message: prompt,
      response: response.text!,
      isResponse: true,
      images: [],
    );
    await HiveServices.addNewChatmodel(chatModel);
    await getAllChatModels();
  }

  // add chatModel
  addChatModel(ChatModel model) async {
    await HiveServices.addNewChatmodel(model);
    await getAllChatModels();
    if (model.images!.isEmpty) {
      await sendTextMessageOnly(model.message, model.id);
    } else {
      await sendTextMessageAndImages(model.images!, model.message, model.id);
    }
  }

  // convert images from xfile to dataparts
  Future<List<DataPart>> imagePathsToParts(List<String> xfiles) async {
    List<DataPart> parts = [];
    for (final file in xfiles) {
      final bytes = await File(file).readAsBytes();
      parts.add(DataPart('image/jpeg', bytes));
    }
    return parts;
  }
}
