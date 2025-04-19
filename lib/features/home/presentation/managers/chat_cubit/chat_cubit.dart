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
    final model =
        GenerativeModel(model: 'gemini-1.5-flash', apiKey: MyStrings.apiKey);
    final content = [Content.text(message)];
    final response = await model.generateContent(content);
    ChatModel chatModel = ChatModel(
      id: id,
      message: message,
      response: response.text!,
      images: [],
    );
    await HiveServices.addNewChatmodel(chatModel);
    await getAllChatModels();
  }
}
