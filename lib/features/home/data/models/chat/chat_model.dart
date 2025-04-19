import 'package:hive/hive.dart';
part 'chat_model.g.dart';

@HiveType(typeId: 1)
class ChatModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String message;
  @HiveField(2)
  final String response;
  @HiveField(3)
  final List<String>? images;

  ChatModel({
    required this.id,
    required this.message,
    required this.response,
    required this.images,
  });
}
