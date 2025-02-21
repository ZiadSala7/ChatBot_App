import 'package:image_picker/image_picker.dart';

class ChatModel {
  final String txt;
  final List<XFile>? images;

  ChatModel({required this.txt, required this.images});
}
