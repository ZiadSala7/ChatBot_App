import 'package:image_picker/image_picker.dart';

class ChatModel {
  final String txt;
  final List<XFile>? images;

  ChatModel({required this.txt, required this.images});
}

abstract class ChatMod {
  final String id;
  final String message;
  final String response;
  final List<XFile>? images;

  ChatMod({
    required this.id,
    required this.message,
    required this.response,
    required this.images,
  });
}
